/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom amc12b_2020_p13 :
  real.sqrt (real.log 6 / real.log 2 + real.log 6 / real.log 3) = real.sqrt (real.log 3 / real.log 2) + real.sqrt (real.log 2 / real.log 3) 