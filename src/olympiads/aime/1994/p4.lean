-- #mathlib 2022-02-16 8a286af6e972afb8aaa36786edeb6dd5676f7b53
/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom aime_1994_p4
  (n : ℕ)
  (h₀ : 0 < n)
  (h₀ : ∑ k in finset.range (n + 1) \ finset.range 1, int.floor (real.log k / real.log 2) = 1994) :
  n = 312 