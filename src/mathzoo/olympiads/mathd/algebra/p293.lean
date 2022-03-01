/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom mathd_algebra_293
  (x : nnreal) :
  real.sqrt (60 * x) * real.sqrt (12 * x) * real.sqrt (63 * x) = 36 * x * real.sqrt (35 * x) 