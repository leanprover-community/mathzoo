/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom mathd_algebra_170
  (h₀ : fintype {n : ℤ | abs (n - 2) ≤ 5 + 6 / 10}) :
  finset.card { n : ℤ | abs (n - 2) ≤ 5 + 6 / 10}.to_finset = 11 