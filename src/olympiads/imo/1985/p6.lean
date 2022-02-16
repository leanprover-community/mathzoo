-- #mathlib 2022-02-16 8a286af6e972afb8aaa36786edeb6dd5676f7b53
/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom imo_1985_p6
  (f : ℕ+ → nnreal → ℝ)
  (h₀ : ∀ x, f 1 x = x)
  (h₁ : ∀ x n, f (n + 1) x = f n x * (f n x + 1 / n)) :
  ∃! a, ∀ n, 0 < f n a ∧ f n a < f (n + 1) a ∧ f (n + 1) a < 1 