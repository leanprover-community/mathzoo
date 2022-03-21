/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

theorem algebra_binomnegdiscrineq_10alt28asqp1
  (a : ℝ) :
  10 * a ≤ 28 * a^2 + 1 :=
begin
  refine le_of_not_gt _,
  by_cases h1 : (1:ℝ) < a * (bit1 (bit0 (a * 2 + (-(a * 2) + 1)))),
  apply not_lt_of_ge,
  all_goals { simp * at * },
  all_goals { nlinarith },
end