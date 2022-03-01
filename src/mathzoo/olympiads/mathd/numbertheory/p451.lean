/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom mathd_numbertheory_451
  (h₀ : fintype {n : ℕ | 2010 ≤ n ∧ n ≤ 2019 ∧ ∃ m, (finset.card (nat.divisors m) = 4 ∧ ∑ p in (nat.divisors m), p = n)}) :
  ∑ k in {n : ℕ | 2010 ≤ n ∧ n ≤ 2019 ∧ ∃ m, (finset.card (nat.divisors m) = 4 ∧ ∑ p in (nat.divisors m), p = n)}.to_finset, k = 2016 