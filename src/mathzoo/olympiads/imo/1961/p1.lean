/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

theorem imo_1961_p1
  (x y z a b : ℝ)
  (h₀ : 0 < x ∧ 0 < y ∧ 0 < z)
  (h₁ : x ≠ y)
  (h₂ : y ≠ z)
  (h₃ : z ≠ x)
  (h₄ : x + y + z = a)
  (h₅ : x^2 + y^2 + z^2 = b^2)
  (h₆ : x * y = z^2) :
  0 < a ∧ b^2 < a^2 ∧ a^2 < 3 * b^2 :=
begin
  simp [*, sq] at *,
  split,
  nlinarith,
  split,
  apply lt_of_not_ge,
  cases a,
  rw add_comm at *,
  nlinarith,
  apply lt_of_not_ge,
  contrapose! h₂,
  apply le_antisymm,
  contrapose! h₃,
  apply eq_of_sub_eq_zero,
  symmetry,
  nlinarith,
  apply le_of_not_gt,
  intros h1,
  apply_assumption,
  nlinarith [h1],
end