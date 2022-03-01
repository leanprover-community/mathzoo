/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom mathd_numbertheory_709
  (n : ℕ+)
  (h₀ : finset.card (nat.divisors (2*n)) = 28)
  (h₁ : finset.card (nat.divisors (3*n)) = 30) :
  finset.card (nat.divisors (6*n)) = 35 