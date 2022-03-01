/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom amc12a_2020_p22
  (h₀ : fintype {n : ℕ | 5∣n ∧ nat.lcm (nat.factorial 5) n = 5 * nat.gcd (nat.factorial 10) n}) :
finset.card {n : ℕ | 5∣n ∧ nat.lcm (nat.factorial 5) n = 5 * nat.gcd (nat.factorial 10) n}.to_finset = 1 