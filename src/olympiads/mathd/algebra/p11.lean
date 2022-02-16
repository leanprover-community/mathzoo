-- #mathlib 2022-02-16 8a286af6e972afb8aaa36786edeb6dd5676f7b53
/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import imports.miniF2F

open_locale nat rat real big_operators topological_space

theorem mathd_algebra_11
  (a b : ℝ)
  (h₀ : a ≠ b)
  (h₁ : a ≠ 2*b)
  (h₂ : (4 * a + 3 * b) / (a - 2 * b) = 5) :
  (a + 11 * b) / (a - b) = 2 :=
begin
  rw eq_comm,
  refine (eq_div_iff _).mpr _,
  exact sub_ne_zero_of_ne h₀,
  rw eq_comm at h₂,
  suffices : a = 13 * b, linarith,
  have key : 5 * (a - 2 * b) = (4 * a + 3 * b), rwa (eq_div_iff (sub_ne_zero_of_ne h₁)).mp,
  linarith,
end