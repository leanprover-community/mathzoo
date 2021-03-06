/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom amc12a_2008_p25
  (a b : ℕ+ → ℝ)
  (h₀ : ∀ n, a (n + 1) = real.sqrt 3 * a n - b n)
  (h₁ : ∀ n, b (n + 1) = real.sqrt 3 * b n + a n)
  (h₂ : a 100 = 2)
  (h₃ : b 100 = 4) :
  a 1 + b 1 = 1 / (2^98) 