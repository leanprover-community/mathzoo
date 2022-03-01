/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom mathd_numbertheory_35
  (h₀ : fintype { n : ℕ | n ∣ (nat.sqrt 196)}) :
  ∑ k in { n : ℕ | n ∣ (nat.sqrt 196)}.to_finset, k = 24 