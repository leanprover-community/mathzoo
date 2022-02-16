-- #mathlib 2022-02-16 8a286af6e972afb8aaa36786edeb6dd5676f7b53
/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import imports.miniF2F

open_locale nat rat real big_operators topological_space

theorem mathd_algebra_342
  (a d: ℝ)
  (h₀ : ∑ k in (finset.range 5), (a + k * d) = 70)
  (h₁ : ∑ k in (finset.range 10), (a + k * d) = 210) :
  a = 42/5 :=
begin
  revert h₀ h₁,
  simp [finset.sum_range_succ, mul_comm d],
  intros,
  linarith,
end