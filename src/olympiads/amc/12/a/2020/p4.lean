-- #mathlib 2022-02-16 8a286af6e972afb8aaa36786edeb6dd5676f7b53
/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom amc12a_2020_p4
  (a b c d : ℕ)
  (h₀ : 1 ≤ a ∧ a ≤ 9 ∧ even a)
  (h₁ : 0 ≤ b ∧ b ≤ 9 ∧ even b)
  (h₂ : 0 ≤ c ∧ c ≤ 9 ∧ even c)
  (h₃ : 0 ≤ d ∧ d ≤ 9 ∧ even d)
  (h₄ : fintype {n : ℕ | n = 10 * (10*(10*a + b) + c) + d ∧ 5∣n}) :
  finset.card {n : ℕ | n = 10 * (10*(10*a + b) + c) + d ∧ 5∣n}.to_finset = 100 