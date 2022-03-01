/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom amc12a_2009_p6
  (m n p q : ℝ)
  (h₀ : p = 2 ^ m)
  (h₁ : q = 3 ^ n) :
  p^(2 * n) * (q^m) = 12^(m * n) 