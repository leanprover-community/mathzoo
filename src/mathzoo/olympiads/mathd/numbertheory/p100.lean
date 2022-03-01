/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom mathd_numbertheory_100
  (n : ℕ+)
  (h₀ : nat.gcd n 40 = 10)
  (h₁ : nat.lcm n 40 = 280) :
  n = 70 