/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

theorem mathd_algebra_484 :
  real.log 27 / real.log 3 = 3 :=
begin
  rw real.log_div_log,
  have three_to_three : (27 : ℝ) = (3 : ℝ)^(3 : ℝ), by norm_num,
  rw three_to_three,
  have trivial_ineq: (0 : ℝ) < (3 : ℝ), by norm_num,
  have trivial_neq: (3: ℝ) ≠ (1 : ℝ), by norm_num,
  exact real.logb_rpow trivial_ineq trivial_neq,
end