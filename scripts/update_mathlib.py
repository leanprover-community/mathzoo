# Copyright (c) 2022 OpenAI. All rights reserved.
# Released under Apache 2.0 license as described in the file LICENSE.
# Authors: Daniel Selsam

import os
import re
import subprocess
import git
import tempfile

def iterate_suffix(base, suffix):
    for root, dirname, files in os.walk(base):
        for f in files:
            if f.endswith(suffix):
                yield os.path.join(root, f)

def collect_files_currently_building():
    for file in iterate_suffix("src", ".lean"):
        first_line = open(file, "r").readlines()[0]
        if first_line.startswith("--") and "#mathlib" in first_line:
            yield file

def delete_oleans():
    for file in iterate_suffix("src", ".olean"):
        os.remove(file)

LEANPKG_PAT = re.compile(r'lean_version = "(?P<version>(.+?))".*mathlib = { git = ".+?", rev = "(?P<rev>(\w{40}))"', re.DOTALL)

def get_old_mathlib_rev():
    text = open("leanpkg.toml", "r").read()
    m = LEANPKG_PAT.search(text)
    assert(m)
    return m.group("rev"), m.group("version")

def get_newest_rev(repo):
    sha = repo.head.object.hexsha
    return sha

# Lean (version 3.40.0, commit 82216a493580, Release)\n
LEAN_VERSION_PAT = re.compile(r"version (?P<version>(\d+\.\d+\.\d+)),")
def get_newest_lean_version(repo_path):
    output = subprocess.run(["lean", "--version"], cwd=repo_path, capture_output=True).stdout.decode("utf-8")
    m = LEAN_VERSION_PAT.search(output)
    print("newest-lean-version-output: ", output)
    assert(m)
    print("newest-lean-version: ", m.group("version"))
    return f"leanprover-community/lean:{m.group('version')}"

def build_mathzoo():
    # We first delete the 
    print("$ rm -rf _target/deps/mathlib")
    subprocess.check_call(["rm", "-rf", "_target/deps/mathlib"])
    print("$ leanpkg configure")
    subprocess.check_call(["leanpkg", "configure"])
    print("$ leanproject get-mathlib-cache")
    subprocess.check_call(["leanproject", "get-mathlib-cache"])
    print("$ leanpkg build")
    subprocess.check_call(["leanpkg", "build"])

def update_leanpkg_toml(old_rev, old_version, new_rev, new_version):
    text = open("leanpkg.toml", "r").read()
    text = text.replace(old_rev, new_rev)
    text = text.replace(old_version, new_version)
    open("leanpkg.toml", "w").write(text)

def get_commit_datetime(repo, rev):
    commit = repo.commit(rev)
    return commit.committed_datetime

def add_header(repo, file, new_rev):
    text = open(file, "r").read()
    date = get_commit_datetime(repo, new_rev).strftime("%Y-%m-%d")
    text = f"-- #mathlib {date} {new_rev}\n" + text
    open(file, "w").write(text)
    
with tempfile.TemporaryDirectory() as tmpdir:
    print("Cloning mathlib...")
    repo = git.Repo.clone_from("https://github.com/leanprover-community/mathlib", os.path.join(tmpdir, "mathlib"))
    files_currently_building = list(collect_files_currently_building())
    print("Files currently building: ", files_currently_building)
    old_rev, old_version = get_old_mathlib_rev()
    old_date = get_commit_datetime(repo, old_rev)
    print("Old rev: ", old_rev, old_version, old_date)

    new_rev = get_newest_rev(repo=repo)
    new_version = get_newest_lean_version(repo_path=os.path.join(tmpdir, "mathlib"))
    print("New rev: ", new_rev, new_version)

    print("Deleting old oleans...")
    delete_oleans()
    print("Updating leanpkg.toml...")
    update_leanpkg_toml(old_rev, old_version, new_rev, new_version)
    print("Building mathzoo...")
    build_mathzoo()

for file in files_currently_building:
    if not os.path.exists(file[:-5] + ".olean"):
        print(f"WARNING: {file} no longer building")
        print(f"Adding header to {file}...")
        add_header(repo, file, new_rev)
    

