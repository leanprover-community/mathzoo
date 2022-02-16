-- #mathlib 2022-02-16 8a286af6e972afb8aaa36786edeb6dd5676f7b53
/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import imports.miniF2F

open_locale nat rat real big_operators topological_space

theorem mathd_algebra_427
  (x y z : ℝ)
  (h₀ : 3 * x + y = 17)
  (h₁ : 5 * y + z = 14)
  (h₂ : 3 * x + 5 * z = 41) :
  x + y + z = 12 :=
begin
  have h₃ := congr (congr_arg has_add.add h₀) h₁,
  linarith,
end