/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

theorem mathd_algebra_33
  (x y z : ℝ)
  (h₀ : x ≠ 0)
  (h₁ : 2 * x = 5 * y)
  (h₂ : 7 * y = 10 * z) :
  z / x = 7 / 25 :=
begin
  field_simp,
  nlinarith,
end