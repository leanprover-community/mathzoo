-- #mathlib 2022-02-16 8a286af6e972afb8aaa36786edeb6dd5676f7b53
/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom mathd_algebra_482
  (m n : ℕ)
  (k : ℝ)
  (f : ℝ → ℝ)
  (h₀ : nat.prime m)
  (h₁ : nat.prime n)
  (h₂ : ∀ x, f x = x^2 - 12 * x + k)
  (h₃ : f m = 0)
  (h₄ : f n = 0) :
  k = 35 