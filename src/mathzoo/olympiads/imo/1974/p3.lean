/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom imo_1974_p3
  (n : ℕ) :
  ¬ 5∣∑ k in finset.range n, (nat.choose (2 * n + 1) (2 * k + 1)) * (2^(3 * k)) 