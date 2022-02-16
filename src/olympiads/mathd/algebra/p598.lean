-- #mathlib 2022-02-16 8a286af6e972afb8aaa36786edeb6dd5676f7b53
/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom mathd_algebra_598
  (a b c d : ℝ)
  (h₁ : ((4:ℝ)^a) = 5)
  (h₂ : ((5:ℝ)^b) = 6)
  (h₃ : ((6:ℝ)^c) = 7)
  (h₄ : ((7:ℝ)^d) = 8) :
  a * b * c * d = 3 / 2 