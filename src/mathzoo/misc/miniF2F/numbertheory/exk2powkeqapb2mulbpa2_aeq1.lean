/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom numbertheory_exk2powkeqapb2mulbpa2_aeq1
  (a b : ℕ+)
  (h₀ : ∃ k > 0, 2^k = (a + b^2) * (b + a^2)) :
  a = 1 