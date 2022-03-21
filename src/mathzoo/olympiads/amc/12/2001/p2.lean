/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

theorem amc12_2001_p2
  (a b n : ℕ)
  (h₀ : 1 ≤ a ∧ a ≤ 9)
  (h₁ : 0 ≤ b ∧ b ≤ 9)
  (h₂ : n = 10 * a + b)
  (h₃ : n = a * b + a + b) :
  b = 9 :=
begin
  simp [*] at *,
  nlinarith,
end