# Copyright (c) 2022 OpenAI. All rights reserved.
# Released under Apache 2.0 license as described in the file LICENSE.
# Authors: Daniel Selsam
#
# Simple script to move miniF2F problems to mathzoo.
# This is expected to only be run once at the very beginning of mathzoo.
# We include it in the repo as documentation of provenance.

import re
import os
import tqdm
import sys
import json
import argparse
import collections
import tempfile
import shutil

MINIF2F_REPO = "https://github.com/openai/miniF2F.git"
MINIF2F_COMMIT = "2df5c635907a9c293f2f4dc0e9e26956df2d340d"
MATHLIB_COMMIT = "8a286af6e972afb8aaa36786edeb6dd5676f7b53"
MATHLIB_COMMIT_DATE = "2022-02-16"

ProblemInfo  = collections.namedtuple("ProblemInfo", ["dirs", "filename"])

IMO_NAME_PAT = re.compile(r"imo_(?P<year>\d{4})_p?(?P<problem>\d+)") # TODO: season

AMC_NAME_PAT = re.compile(r"amc(?P<level>\d{1,2})(?P<season>[ab])?_(?P<year>\d{4})_p?(?P<problem>\d+)") # TODO: season
AIME_NAME_PAT = re.compile(r"aime_?((?P<season>[iI]{1,2})_)?(?P<year>\d{4})_p?(?P<problem>\d+)")
MATHD_NAME_PAT = re.compile(r"mathd_(?P<subject>\w+)_(?P<problem>\d+)")
MISC_NAME_PAT = re.compile(r"(?P<category>\w+?)_(?P<name>\S+)")
THM_PAT = re.compile(r"(theorem\s+(\S+)(.+?):=(((?!theorem).)+end))", re.DOTALL)

HEADER = f"""-- #mathlib {MATHLIB_COMMIT_DATE} {MATHLIB_COMMIT}
/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import imports.miniF2F

open_locale nat rat real big_operators topological_space
"""

def get_info(name):
    m = AMC_NAME_PAT.match(name)
    if m is not None:
        dirs = ["olympiads", "amc"]
        assert(m.group("level") is not None)
        dirs.append(m.group("level"))
        assert(m.group("year") is not None)
        dirs.append(m.group("year"))
        if m.group("season") is not None: dirs.append(m.group("season"))
        return ProblemInfo(dirs, "p%d.lean" % int(m.group("problem")))

    m = AIME_NAME_PAT.match(name)
    if m is not None:
        dirs = ["olympiads", "aime"]
        assert(m.group("year") is not None)
        dirs.append(m.group("year"))
        if m.group("season") is not None: dirs.append(m.group("season").lower())
        return ProblemInfo(dirs, "p%d.lean" % int(m.group("problem")))

    m = MATHD_NAME_PAT.match(name)
    if m is not None:
        dirs = ["olympiads", "mathd"]
        assert(m.group("subject") is not None)
        dirs.append(m.group("subject"))
        return ProblemInfo(dirs, "p%d.lean" % int(m.group("problem")))

    m = IMO_NAME_PAT.match(name)
    if m is not None:
        dirs = ["olympiads", "imo"]
        assert(m.group("year") is not None)
        dirs.append(m.group("year"))
        return ProblemInfo(dirs, "p%d.lean" % int(m.group("problem")))

    m = MISC_NAME_PAT.match(name)
    if m is not None:
        dirs = ["misc", "miniF2F", m.group("category")]
        return ProblemInfo(dirs, "%s.lean" % m.group("name"))

    raise Exception("unexpected: {name}".format(name=name))


def main():
    with tempfile.TemporaryDirectory() as tmp_dirname:
        os.system(f"cd {tmp_dirname} && git clone {MINIF2F_REPO}")
        os.system(f"cd {os.path.join(tmp_dirname, 'miniF2F')} && git checkout {MINIF2F_COMMIT}")
        os.makedirs(os.path.join("src", "imports"), exist_ok=True)
        shutil.copy(
            src=os.path.join(tmp_dirname, "miniF2F", "lean", "src", "minif2F_import.lean"),
            dst=os.path.join("src", "imports", "miniF2F.lean")
        )

        for filename in ["valid.lean", "test.lean"]:
            with open(os.path.join(tmp_dirname, "miniF2F", "lean", "src", filename), "r") as f:
                text = f.read()

            for body, name, thm, pf, _ in THM_PAT.findall(text):
                info = get_info(name)
                print(info.dirs)
                out_dirname = os.path.join("src", *info.dirs)
                os.makedirs(out_dirname, exist_ok=True)
                if os.path.exists(os.path.join(out_dirname, info.filename)):
                    print("skipping %s" % name)
                    continue

                with open(os.path.join(out_dirname, info.filename), "w") as f:
                    f.write(HEADER)
                    f.write("\n")
                    if "sorry" in pf:
                        f.write("axiom {name}{thm}".format(name=name, thm=thm))
                    else:
                        f.write("theorem {name}{thm}:={pf}".format(name=name, thm=thm, pf=pf))


                print(name, info)

        print(tmp_dirname)
        input("...")

if __name__ == "__main__":
    main()