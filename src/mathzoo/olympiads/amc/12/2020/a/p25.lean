/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom amc12a_2020_p25
  (a : ℚ)
  (h₀ : fintype {x : ℝ | ↑⌊x⌋ * (x - ↑⌊x⌋) = ↑a * x ^ 2})
  (h₁ : ∑ k in {x : ℝ | ↑⌊x⌋ * (x - ↑⌊x⌋) = ↑a * x^2}.to_finset, k = 420) :
  ↑a.denom + a.num = 929 