/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom aime_1997_p12
  (x : ℝ)
  (h₀ : x = (∑ n in finset.range 45 \ finset.range 1, real.cos (n * π / 180)) / (∑ n in finset.range 45 \ finset.range 1, real.sin (n * π / 180))) :
  int.floor (100 * x) = 241 