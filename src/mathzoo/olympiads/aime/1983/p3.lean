/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom aime_1983_p3
  (f : ℝ → ℝ)
  (h₀ : ∀ x, f x = (x^2 + (18 * x +  30) - 2 * real.sqrt (x^2 + (18 * x + 45))))
  (h₁ : fintype (f⁻¹' {0})) :
  ∏ x in (f⁻¹' {0}).to_finset, x = 20 