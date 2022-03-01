/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom amc12a_2003_p23
  (h₀ : fintype {k : ℕ+ | ((k * k):ℕ) ∣ (∏ i in (finset.erase (finset.range 10) 0), i!)}) :
  finset.card {k : ℕ+ | ((k * k):ℕ) ∣ (∏ i in (finset.erase (finset.range 10) 0), i!)}.to_finset = 672 