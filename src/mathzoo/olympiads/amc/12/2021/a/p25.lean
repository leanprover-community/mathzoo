/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom amc12a_2021_p25
  (n : ℕ+)
  (f : ℕ+ → ℝ)
  (h₀ : ∀ n, f n = (∑ k in (nat.divisors n), 1)/(n^((1:ℝ)/3)))
  (h₁ : ∀ p ≠ n, f p < f n) :
  n = 2520 