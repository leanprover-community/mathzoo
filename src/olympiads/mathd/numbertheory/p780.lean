-- #mathlib 2022-02-16 8a286af6e972afb8aaa36786edeb6dd5676f7b53
/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom mathd_numbertheory_780
  (m x : ℕ)
  (h₀ : 10 ≤ m)
  (h₁ : m ≤ 99)
  (h₂ : (6 * x) % m = 1)
  (h₃ : (x - 6^2) % m = 0) :
  m = 43 