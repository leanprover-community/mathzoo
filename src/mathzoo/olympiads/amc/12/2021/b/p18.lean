/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom amc12b_2021_p18
  (z : ℂ)
  (h₀ : 12 * complex.norm_sq z = 2 * complex.norm_sq (z + 2) + complex.norm_sq (z^2 + 1) + 31) :
  z + 6 / z = -2 