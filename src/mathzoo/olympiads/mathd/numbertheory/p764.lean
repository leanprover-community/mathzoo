/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom mathd_numbertheory_764
  (p : ℕ)
  (h₀ : nat.prime p)
  (h₁ : 7 ≤ p) :
  ∑ k in finset.erase (finset.range (p - 1)) 0, ((k:zmod p)⁻¹ * ((k:zmod p) + 1)⁻¹) = 2 