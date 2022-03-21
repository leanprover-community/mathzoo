/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

theorem mathd_algebra_410
  (x y : ℝ)
  (h₀ : y = x^2 - 6 * x + 13) :
  4 ≤ y :=
begin
  cases le_total x 3 with h,
  all_goals { nlinarith },
end