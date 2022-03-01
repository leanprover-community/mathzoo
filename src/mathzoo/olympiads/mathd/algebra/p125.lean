/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom mathd_algebra_125
  (x y : ℕ+)
  (h₀ : 5 * x = y)
  (h₁ : (↑x - (3:ℤ)) + (y - (3:ℤ)) = 30) :
  x = 6 