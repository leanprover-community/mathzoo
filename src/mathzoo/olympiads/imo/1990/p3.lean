/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom imo_1990_p3
  (n : ℕ)
  (h₀ : 2 ≤ n)
  (h₁ : n^2 ∣ 2^n + 1) :
  n = 3 