/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom amc12a_2020_p15
  (a b : â)
  (hâ : a^3 - 8 = 0)
  (hâ : b^3 - 8 * b^2 - 8 * b + 64 = 0) :
  complex.abs (a - b) â¤ 2 * real.sqrt 21 