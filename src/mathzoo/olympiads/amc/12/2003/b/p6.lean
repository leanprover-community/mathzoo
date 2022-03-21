/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

theorem amc12b_2003_p6
  (a r : ℝ)
  (u : ℕ → ℝ)
  (h₀ : ∀ k, u k = a * r^k)
  (h₁ : u 1 = 2)
  (h₂ : u 3 = 6) :
  u 0 = 2 / real.sqrt 3 ∨ u 0 = - (2 / real.sqrt 3) :=
begin
  simp * at *,
  apply eq_or_eq_neg_of_sq_eq_sq,
  norm_num [pow_bit1, *],
  norm_num [pow_succ, mul_assoc, mul_comm a] at h₂,
  field_simp [pow_succ', mul_comm a, h₀, mul_left_comm, *] at *,
  rw [mul_assoc, mul_comm],
  nlinarith,
end