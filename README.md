# Lean mathzoo

Mathzoo is a user maintained collection of mathematical formalizations in the [Lean theorem prover](https://leanprover.github.io/) that are both *standalone* (a short file that depends only on [mathlib](https://github.com/leanprover-community/mathlib)) and *deadend* (nothing will ever depend on it). We call each such file a *gem*.

## Noteworthy design decisions

1. *Minimal requirements*. Gems will be accepted without detailed code review. There are no requirements on proof style or formatting conventions.

1. *Minimal maintainance*. Gems need not be kept up-to-date with mathlib. Instead, every file must begin with a comment `-- #mathlib YYYY-MM-DD <commit>` indicating the last known commit against which the file will build.

1. *Dataset friendliness*. We strongly encourage the inclusion of metadata that will make gems more useful as training data for both mathematical problem solving (e.g. [The IMO Grand Challenge](https://imo-grand-challenge.github.io/)) and auto-formalization.

## Repository organization

Gems are organized in a directory hierarchy that reflects their provenance as much as possible. For example, a proof of the first problem from IMO 2021 lives at [/src/olympiads/imo/2020/p2.lean](/src/olympiads/imo/2020/p2.lean) while a solution to an exercise from the third chapter of the [Concrete Mathematics textbook](https://en.wikipedia.org/wiki/Concrete_Mathematics) would live in `/src/textbooks/concrete_mathematics/chapter3/`. There may be multiple gems corresponding to different proofs of the same problem, in which case the filenames should be postfixed either with a description of the proof (e.g. `p6_complex_bash.lean`) or just an alternative number (e.g. `p6_alt2.lean`). As a rule-of-thumb, we suggest creating a sub-directory whenever there is a clear sub-category that might eventually contain more than (say) ten gems. Every directory includes a `README.md` file describing the source and linking to it as appropriate.

## Gem requirements

Every gem must:

- be in its own file
- start with a `-- #mathlib YYYY-MM-DD <commit>` comment indicating a commit against which the file will build
- only import files from mathlib
- be `sorry`-free
- be `example`-free
- be reasonably short (e.g. <200 lines, not including comments)
- compile within a reasonable amount of time (e.g. 1 minute in CI)
- not produce any output

We do allow gems that consist of a formal statement without proof, in which case the statement should appear as an `axiom` declaration.

We also encourage gem-writers to include:

- a description of where the problem came from (if not implied by filename)
- an informal statement of the problem (if not easily accessible online)
- links to any proofs consulted during the formalization
- ideally: detailed comments aligning an informal proof to the formal one