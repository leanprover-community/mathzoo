/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom mathd_algebra_185
  (f : ℝ → ℝ)
  (h₀ : ∀ x, f x = abs (x + 4))
  (h₁ : fintype {x : ℝ | f x < 9}) :
  finset.card { x : ℝ | f x < 9 }.to_finset = 17 