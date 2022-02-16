-- #mathlib 2022-02-16 8a286af6e972afb8aaa36786edeb6dd5676f7b53
/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4
  (x e : ℂ)
  (h₀ : x + e = 7)
  (h₁ : 2 * x + e = 3) :
  e = 11 ∧ x = -4 