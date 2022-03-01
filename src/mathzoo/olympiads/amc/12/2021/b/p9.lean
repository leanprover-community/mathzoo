/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom amc12b_2021_p9 :
  (real.log 80 / real.log 2) / (real.log 2 / real.log 40) - (real.log 160 / real.log 2) / (real.log 2 / real.log 20) = 2 