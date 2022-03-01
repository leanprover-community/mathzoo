/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown
  (m n : ℕ)
  (f : ℕ → ℕ)
  (h₀ : ∀ x, f x = 4^x + 6^x + 9^x)
  (h₁ : 0 < m ∧ 0 < n)
  (h₂ : m ≤ n) :
  f (2^m)∣f (2^n) 