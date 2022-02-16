-- #mathlib 2022-02-16 8a286af6e972afb8aaa36786edeb6dd5676f7b53
/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import imports.miniF2F

open_locale nat rat real big_operators topological_space

theorem mathd_algebra_96
  (x y z a : ℝ)
  (h₀ : 0 < x ∧ 0 < y ∧ 0 < z ∧ 0 < a)
  (h₁ : real.log x - real.log y = a)
  (h₂ : real.log y - real.log z = 15)
  (h₃ : real.log z - real.log x = -7) :
  a = -8 :=
begin
  nlinarith [h₁, h₂, h₃],
end