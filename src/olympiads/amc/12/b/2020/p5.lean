-- #mathlib 2022-02-16 8a286af6e972afb8aaa36786edeb6dd5676f7b53
/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom amc12b_2020_p5
  (a b : ℕ+)
  (h₀ : (5:ℝ) / 8 * b - 2 / 3 * a = 7)
  (h₁ : ↑b - (5:ℝ) / 8 * b - (a - 2 / 3 * a) = 7) :
  a = 42 