/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom mathd_numbertheory_552
  (f g h : ℕ+ → ℕ)
  (h₀ : ∀ x, f x = 12 * x + 7)
  (h₁ : ∀ x, g x = 5 * x + 2)
  (h₂ : ∀ x, h x = nat.gcd (f x) (g x))
  (h₃ : fintype (h '' {x : ℕ+ | true})) :
  ∑ k in (h '' {x : ℕ+ | true}).to_finset, k = 12 