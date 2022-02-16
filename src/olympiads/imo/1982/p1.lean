-- #mathlib 2022-02-16 8a286af6e972afb8aaa36786edeb6dd5676f7b53
/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom imo_1982_p1
  (f : ℕ+ → ℕ)
  (h₀ : ∀ m n, f (m + n) - f m - f n = 0 ∨ f (m + n) - f m - f n = 1)
  (h₁ : f 2 = 0)
  (h₂ : 0 < f 3)
  (h₃ : f 9999 = 3333) :
  f 1982 = 660 