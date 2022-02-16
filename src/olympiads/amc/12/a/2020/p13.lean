-- #mathlib 2022-02-16 8a286af6e972afb8aaa36786edeb6dd5676f7b53
/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom amc12a_2020_p13
  (a b c : ℕ)
  (n : nnreal)
  (h₀ : n ≠ 1)
  (h₁ : 1 < a ∧ 1 < b ∧ 1 < c)
  (h₂ : (n * ((n * (n^(1 / c)))^(1 / b)))^(1 / a) = (n^25)^(1 / 36)) :
  b = 3 