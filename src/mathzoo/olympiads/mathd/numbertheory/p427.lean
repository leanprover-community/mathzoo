/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom mathd_numbertheory_427
  (a : ℕ)
  (h₀ : a = (∑ k in (nat.divisors 500), k)) :
  ∑ k in finset.filter (λ x, nat.prime x) (nat.divisors a), k = 25 