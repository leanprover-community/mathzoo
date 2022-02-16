# Copyright (c) 2022 OpenAI. All rights reserved.
# Released under Apache 2.0 license as described in the file LICENSE.
# Authors: Daniel Selsam
#
# Simple script to move IMO problems from the main mathlib repository to mathzoo.
# This is expected to only be run once at the very beginning of mathzoo.
# We include it in the repo as documentation of provenance.

import os
import re
import tempfile

MATHLIB_REPO = "https://github.com/leanprover-community/mathlib.git"
MATHLIB_COMMIT = "8a286af6e972afb8aaa36786edeb6dd5676f7b53"
MATHLIB_COMMIT_DATE = "2022-02-16"

def main():
    with tempfile.TemporaryDirectory() as dirname:
        os.system(f"cd {dirname} && git clone {MATHLIB_REPO}")
        os.system(f"cd {os.path.join(dirname, 'mathlib')} && git checkout {MATHLIB_COMMIT}")

        imo_dir = os.path.join(dirname, "mathlib", 'archive', 'imo')
        filenames = os.listdir(imo_dir)
        PAT = re.compile("imo(?P<year>\d{4})_(?P<prefix>[qb])(?P<number>\d)")

        for filename in filenames:
            if not filename.endswith(".lean"): continue
            m = PAT.match(filename)
            if m is None:
                raise Exception("Failed to parse filename: %s" % filename)
            year = m.group("year")
            prefix = m.group("prefix")
            number = int(m.group("number"))
            if prefix == "q": pass
            elif prefix == "b": number += 3
            else: raise Exception("")
            print(f"{filename} ==> year={year}, prefix={prefix}, number={number}")
            out_dir = os.path.join("src", "olympiads", "imo", year)
            os.makedirs(out_dir, exist_ok=True)
            out_path = os.path.join(out_dir, "p%d.lean" % number)
            if os.path.exists(out_path):
                raise Exception("%s already exists" % out_path)
            os.system(f"echo '--#mathlib {MATHLIB_COMMIT_DATE} {MATHLIB_COMMIT}' > {out_path}")
            os.system(f"cat {os.path.join(imo_dir, filename)} >> {out_path}")

if __name__ == "__main__":
    main()