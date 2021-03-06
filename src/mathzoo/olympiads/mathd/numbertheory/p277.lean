/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom mathd_numbertheory_277
  (m n : â)
  (hâ : nat.gcd m n = 6)
  (hâ : nat.lcm m n = 126) :
  60 â¤ m + n 