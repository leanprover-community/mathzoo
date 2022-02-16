-- #mathlib 2022-02-16 8a286af6e972afb8aaa36786edeb6dd5676f7b53
/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom mathd_numbertheory_42
  (u v : ℕ+)
  (h₀ : 27 * ↑u % 40 = 17)
  (h₁ : 27 * ↑v % 40 = 17)
  (h₂ : u < 40)
  (h₃ : v < 80)
  (h₄ : 40 < v) :
  (u + v) = 62 