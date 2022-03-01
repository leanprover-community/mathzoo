/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

theorem algebra_sqineq_36azm9asqle36zsq
  (z a : ℝ) :
  36 * (a * z) - 9 * a^2 ≤ 36 * z^2 :=
begin
  suffices : 4 * (a * z) - a^2 ≤ 4 * z^2, nlinarith,
  suffices : 0 ≤ (a - 2 * z)^2, nlinarith,
  exact pow_two_nonneg (a - 2 * z),
end