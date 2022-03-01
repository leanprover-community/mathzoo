/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom induction_sum_1oktkp1
  (n : ℕ) :
  ∑ k in (finset.range n), (1:ℝ) / ((k + 1) * (k + 2)) = n / (n + 1) 