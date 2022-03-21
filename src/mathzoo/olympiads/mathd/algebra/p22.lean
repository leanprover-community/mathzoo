/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

theorem mathd_algebra_22 :
  real.log (5^4) / real.log (5^2) = 2 :=
begin
  field_simp [two_mul],
  rw div_eq_iff,
  ring,
  norm_num, 
end