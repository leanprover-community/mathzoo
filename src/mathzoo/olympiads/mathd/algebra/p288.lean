/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom mathd_algebra_288
  (x y : ℝ)
  (n : nnreal)
  (h₀ : x < 0 ∧ y < 0)
  (h₁ : abs x = 6)
  (h₂ : real.sqrt ((x - 8)^2 + (y - 3)^2) = 15)
  (h₃ : real.sqrt (x^2 + y^2) = real.sqrt n) :
  n = 52 