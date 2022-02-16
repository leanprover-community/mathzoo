-- #mathlib 2022-02-16 8a286af6e972afb8aaa36786edeb6dd5676f7b53
/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom mathd_algebra_459
  (a b c d : ℚ)
  (h₀ : 3 * a = b + c + d)
  (h₁ : 4 * b = a + c + d)
  (h₂ : 2 * c = a + b + d)
  (h₃ : 8 * a + 10 * b + 6 * c = 24) :
  ↑d.denom + d.num = 28 