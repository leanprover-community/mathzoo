/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom numbertheory_sumkmulnckeqnmul2pownm1
  (n : ℕ)
  (h₀ : 0 < n) :
  ∑ k in finset.range (n + 1) \ finset.range 1, (k * nat.choose n k) = n * 2^(n - 1) 