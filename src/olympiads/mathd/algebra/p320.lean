-- #mathlib 2022-02-16 8a286af6e972afb8aaa36786edeb6dd5676f7b53
/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom mathd_algebra_320
  (x : nnreal)
  (a b c : ℕ+)
  (h₀ : 2 * x^2 = 4 * x + 9)
  (h₁ : x = (a + nnreal.sqrt b) / c) :
  a + b + c = 26 