/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom imo_1978_p5
  (n : ℕ)
  (p : ℕ+ → ℕ+)
  (f : ℕ → ℕ+)
  (h₀ : function.injective p)
  (h₁ : ∀ n : ℕ+, f n = p n)
  (h₁ : 0 < n) :
  (∑ k in finset.range (n + 1) \ finset.range 1, (1:ℝ) / k) ≤ ∑ k in finset.range (n + 1) \ finset.range 1, (f k) / k^2 