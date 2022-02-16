-- #mathlib 2022-02-16 8a286af6e972afb8aaa36786edeb6dd5676f7b53
/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import imports.miniF2F

open_locale nat rat real big_operators topological_space

theorem mathd_algebra_80
  (x : ℝ)
  (h₀ : x ≠ -1)
  (h₁ : (x - 9) / (x + 1) = 2) :
  x = -11 :=
begin
  revert x h₀ h₁,
  norm_num,
  intros _ hx,
  simp [hx, two_mul, sub_eq_add_neg],
  intro H,
  rwa [div_eq_iff_mul_eq] at H,
  linarith,
  norm_num,
  intro h,
  exact hx (add_eq_zero_iff_eq_neg.1 h),
end