/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

theorem mathd_algebra_89
  (b : ℝ)
  (h₀ : b ≠ 0) :
  (7 * b^3)^2 * (4 * b^2)^(-(3:ℤ)) = 49 / 64 :=
begin
  ring_nf,
  field_simp,
  norm_cast,
  refine (div_eq_iff _).mpr _,
  { norm_num,
    assumption },
  ring,
end