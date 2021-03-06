/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom algebra_apb4leq8ta4pb4
  (a b : â)
  (hâ : 0 < a â§ 0 < b) :
  (a + b)^4 â¤ 8 * (a^4 + b^4) 