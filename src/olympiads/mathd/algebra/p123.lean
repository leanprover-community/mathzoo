-- #mathlib 2022-02-16 8a286af6e972afb8aaa36786edeb6dd5676f7b53
/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import imports.miniF2F

open_locale nat rat real big_operators topological_space

theorem mathd_algebra_123
  (a b : ℕ+)
  (h₀ : a + b = 20)
  (h₁ : a = 3 * b) :
  a - b = 10 :=
begin
  rw h₁ at h₀,
  rw h₁,
  have h₂ : 3 * (b:ℕ) + (b:ℕ) = (20:ℕ), {
    exact subtype.mk.inj h₀,
  },
  have h₃ : (b:ℕ) = 5, linarith,
  have h₄ : b = 5, {
    exact pnat.eq h₃,
  },
  rw h₄,
  calc (3:ℕ+) * 5 - 5 = 15 - 5 : by {congr,}
            ... = 10 : by {exact rfl},
end