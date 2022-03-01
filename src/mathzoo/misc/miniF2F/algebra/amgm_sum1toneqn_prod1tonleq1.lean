/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom algebra_amgm_sum1toneqn_prod1tonleq1
  (a : ℕ → nnreal)
  (n : ℕ)
  (h₀ : ∑ x in finset.range n, a x = n) :
  ∏ x in finset.range n, a x ≤ 1 