/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom amc12a_2003_p24
  (a b : ℝ)
  (h₀ : b ≤ a)
  (h₁ : 1 < b) :
  real.log (a / b) / real.log a + real.log (b / a) / real.log b ≤ 0 