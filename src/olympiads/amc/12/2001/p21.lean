-- #mathlib 2022-02-16 8a286af6e972afb8aaa36786edeb6dd5676f7b53
/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom amc12_2001_p21
  (a b c d : ℕ)
  (h₀ : a*b*c*d = nat.factorial 8)
  (h₁ : a*b + a + b = 524)
  (h₂ : b*c + b + c = 146)
  (h₃ : c*d + c + d = 104) :
  ↑a - ↑d = (10:ℤ) 