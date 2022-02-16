-- #mathlib 2022-02-16 8a286af6e972afb8aaa36786edeb6dd5676f7b53
/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom imo_2007_p6
  (a : ℕ → nnreal)
  (h₀ : ∑ x in finset.range 100, ((a (x + 1))^2) = 1) :
  ∑ x in finset.range 99, ((a (x + 1))^2 * a (x + 2)) + (a 100)^2 * a 1 < 12 / 25 