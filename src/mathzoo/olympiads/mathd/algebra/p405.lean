/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom mathd_algebra_405
  (x : ℕ)
  (h₀ : 0 < x)
  (h₁ : x^2 + 4 * x + 4 < 20) :
  x = 1 ∨ x = 2 