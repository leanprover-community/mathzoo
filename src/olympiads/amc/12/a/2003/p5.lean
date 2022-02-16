-- #mathlib 2022-02-16 8a286af6e972afb8aaa36786edeb6dd5676f7b53
/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom amc12a_2003_p5
  (a m c : ℕ)
  (h₀ : a ≤ 9 ∧ m ≤ 9 ∧ c ≤ 9)
  (h₁ : 10*(10*(10*(10*a + m) + c) + 1) + 0 + (10*(10*(10*(10*a + m) + c) + 1) + 2) = 123422) :
  a + m + c = 14 