-- #mathlib 2022-02-16 8a286af6e972afb8aaa36786edeb6dd5676f7b53
/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom mathd_algebra_144
  (a b c d : ℕ+)
  (h₀ : (c:ℤ) - (b:ℤ) = (d:ℤ))
  (h₁ : (b:ℤ) - (a:ℤ) = (d:ℤ))
  (h₂ : a + b + c = 60)
  (h₃ : a + b > c) :
  d < 10 