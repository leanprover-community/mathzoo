/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom amc12_2000_p1
  (i m o : ℕ)
  (h₀ : i ≠ 0 ∧ m ≠ 0 ∧ o ≠ 0)
  (h₁ : i*m*o = 2001) :
  i+m+o ≤ 671 