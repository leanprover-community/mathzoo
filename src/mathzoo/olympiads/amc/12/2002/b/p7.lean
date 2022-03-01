/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom amc12b_2002_p7
  (a b c : ℕ+)
  (h₀ : b = a + 1)
  (h₁ : c = b + 1)
  (h₂ : a * b * c = 8 * (a + b + c)) :
  a^2 + (b^2 + c^2) = 77 