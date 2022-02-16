-- #mathlib 2022-02-16 8a286af6e972afb8aaa36786edeb6dd5676f7b53
/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import imports.miniF2F

open_locale nat rat real big_operators topological_space

theorem algebra_sqineq_4bap1lt4bsqpap1sq
  (a b : ℝ) :
  4 * b * (a + 1) ≤ 4 * b^2 + (a + 1)^2 :=
begin
  suffices : 0 ≤ (2 * b - (a + 1))^2, nlinarith,
  exact pow_two_nonneg (2 * b - (a + 1)),
end