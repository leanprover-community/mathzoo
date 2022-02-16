-- #mathlib 2022-02-16 8a286af6e972afb8aaa36786edeb6dd5676f7b53
/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import imports.miniF2F

open_locale nat rat real big_operators topological_space

theorem amc12b_2002_p6
  (a b : ℝ)
  (h₀ : a ≠ 0 ∧ b ≠ 0)
  (h₁ : ∀ x, x^2 + a * x + b = (x - a) * (x - b)) :
  a = 1 ∧ b = -2 :=
begin
  have h₂ := h₁ a,
  have h₃ := h₁ b,
  have h₄ := h₁ 0,
  simp at *,
  have h₅ : b * (1 - a) = 0, linarith,
  simp at h₅,
  cases h₅ with h₅ h₆,
  exfalso,
  exact absurd h₅ h₀.2,
  have h₆ : a = 1, linarith,
  split,
  exact h₆,
  rw h₆ at h₂,
  linarith,
end