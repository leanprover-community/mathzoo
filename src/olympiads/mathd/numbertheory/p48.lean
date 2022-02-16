-- #mathlib 2022-02-16 8a286af6e972afb8aaa36786edeb6dd5676f7b53
/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import imports.miniF2F

open_locale nat rat real big_operators topological_space

theorem mathd_numbertheory_48
  (b : ℕ)
  (h₀ : 0 < b)
  (h₁ : 3 * b^2 + 2 * b + 1 = 57) :
  b = 4 :=
begin
  nlinarith,
end