/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom mathd_numbertheory_221
  (h₀ : fintype {x : ℕ | 0 < x ∧ x < 1000 ∧ x.divisors.card = 3}) :
  finset.card {x : ℕ | 0 < x ∧ x < 1000 ∧ finset.card (nat.divisors x) = 3}.to_finset = 11 