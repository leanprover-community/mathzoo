/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

theorem mathd_algebra_263
  (y : ℝ)
  (h₀ : 0 ≤ 19 + 3 * y)
  (h₁ : real.sqrt (19 + 3 * y) = 7) :
  y = 10 :=
begin
  revert y h₀ h₁,
  intros x hx,
  rw real.sqrt_eq_iff_sq_eq hx,
  swap,
  norm_num,
  intro h,
  nlinarith,
end