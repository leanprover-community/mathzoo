/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

theorem mathd_algebra_296 :
  abs (((3491 - 60) * (3491 + 60) - 3491^2):ℤ) = 3600 :=
begin
  rw abs_of_nonpos,
  norm_num,
  norm_num,
end