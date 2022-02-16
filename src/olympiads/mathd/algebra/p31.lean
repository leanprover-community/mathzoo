-- #mathlib 2022-02-16 8a286af6e972afb8aaa36786edeb6dd5676f7b53
/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom mathd_algebra_31
  (x : nnreal)
  (u : ℕ → nnreal)
  (h₀ : ∀ n, u (n + 1) = nnreal.sqrt (x + u n))
  (h₁ : filter.tendsto u filter.at_top (𝓝 9)) :
  9 = nnreal.sqrt (x + 9) 