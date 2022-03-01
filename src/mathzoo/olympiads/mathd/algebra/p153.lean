/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom mathd_algebra_153
  (n : ℝ)
  (h₀ : n = 1 / 3) :
  int.floor (10 * n) + int.floor (100 * n) + int.floor (1000 * n) + int.floor (10000 * n) = 3702 