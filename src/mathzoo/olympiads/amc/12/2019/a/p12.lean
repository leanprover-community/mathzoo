/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom amc12a_2019_p12
  (x y : ℝ)
  (h₀ : x ≠ 1 ∧ y ≠ 1)
  (h₁ : real.log x / real.log 2 = real.log 16 / real.log y)
  (h₂ : x * y = 64) :
  real.log (x / y) / real.log 2 = 20 