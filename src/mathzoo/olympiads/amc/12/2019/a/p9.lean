/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom amc12a_2019_p9
  (a : ℕ+ → ℚ)
  (h₀ : a 1 = 1)
  (h₁ : a 2 = 3 / 7)
  (h₂ : ∀ n, a (n + 2) = (a n * a (n + 1)) / (2 * a n - a (n + 1))) :
  ↑(a 2019).denom + (a 2019).num = 8078 