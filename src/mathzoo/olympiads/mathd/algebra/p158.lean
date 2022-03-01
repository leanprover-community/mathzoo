/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom mathd_algebra_158
  (a : ℕ)
  (h₀ : even a)
  (h₁ : ↑∑ k in finset.range 8, (2 * k + 1) - ↑∑ k in finset.range 5, (a + 2 * k) = (4:ℤ)) :
  a = 8 