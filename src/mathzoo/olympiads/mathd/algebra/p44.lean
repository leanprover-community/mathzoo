/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

theorem mathd_algebra_44
  (s t : â)
  (hâ : s = 9 - 2 * t)
  (hâ : t = 3 * s + 1) :
  s = 1 â§ t = 4 :=
begin
  split; linarith,
end