-- #mathlib 2022-02-16 8a286af6e972afb8aaa36786edeb6dd5676f7b53
/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom mathd_algebra_451
  (σ : equiv ℝ ℝ)
  (h₀ : σ.2 (-15) = 0)
  (h₁ : σ.2 0 = 3)
  (h₂ : σ.2 3 = 9)
  (h₃ : σ.2 9 = 20) :
  σ.1 (σ.1 9) = 0 