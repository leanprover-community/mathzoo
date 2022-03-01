/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom mathd_algebra_69
  (r s : ℕ+)
  (h₀ : ↑r * ↑s = (450:ℤ))
  (h₁ : (↑r + 5) * (↑s - 3) = (450:ℤ)) :
  r = 25 