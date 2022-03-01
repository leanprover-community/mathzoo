/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom aime_1991_p6
  (r : ℝ)
  (h₀ : ∑ k in finset.range 92 \ finset.range 19, (int.floor (r + k / 100)) = 546) :
  int.floor (100 * r) = 743 