/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

theorem mathd_algebra_13
  (a b :ℝ)
  (h₀ : ∀ x, (x - 3 ≠ 0 ∧ x - 5 ≠ 0) → 4 * x / (x^2 - 8 * x + 15) = a / (x - 3) + b / (x - 5)) :
  a = -6 ∧ b = 10 :=
begin
  have h₁ := h₀ 1,
  have h := h₀ (1 / 2),
  norm_num [*, add_comm] at *,
  split,
  all_goals { field_simp at *; linarith },
end