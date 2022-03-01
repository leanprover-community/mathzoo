/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom mathd_numbertheory_530
  (n k : ℕ+)
  (h₀ : ↑n / ↑k < (6:ℝ))
  (h₁ : (5:ℝ) < ↑n / ↑k) :
  22 ≤ (nat.lcm n k) / (nat.gcd n k) 