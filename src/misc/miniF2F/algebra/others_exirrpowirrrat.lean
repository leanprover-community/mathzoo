-- #mathlib 2022-02-16 8a286af6e972afb8aaa36786edeb6dd5676f7b53
/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import imports.miniF2F

open_locale nat rat real big_operators topological_space

theorem algebra_others_exirrpowirrrat :
  ∃ a b, irrational a ∧ irrational b ∧ ¬ irrational (a^b) :=
begin
  let sqrt_2 :=  real.sqrt 2,
  by_cases irrational (sqrt_2^sqrt_2),
  {
    have h': ¬ irrational ((sqrt_2^sqrt_2)^sqrt_2),
    {
     intro h,
     rw ← (real.rpow_mul (real.sqrt_nonneg 2) (real.sqrt 2) (real.sqrt 2)) at h,
     have zlet : 0 ≤ (2 : ℝ), by norm_num,
     rw ← (real.sqrt_mul zlet 2) at h,
     rw real.sqrt_mul_self zlet at h,
     have x : (real.sqrt 2)^(2 : ℕ) = (real.sqrt 2)^(2 : ℝ), by norm_cast,
     rw ← x at h,
     rw real.sq_sqrt zlet at h,
     have tnotira : ¬ irrational 2,
     {
        convert rat.not_irrational 2,
        norm_cast,
     },
     exact tnotira h,
    },
    exact ⟨(sqrt_2^sqrt_2), sqrt_2, h, irrational_sqrt_two, h'⟩,
  },
  {
     exact ⟨sqrt_2, sqrt_2, irrational_sqrt_two, irrational_sqrt_two, h⟩,
  }
end