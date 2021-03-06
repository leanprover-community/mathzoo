/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

theorem mathd_algebra_338
  (a b c : â)
  (hâ : 3 * a + b + c = -3)
  (hâ : a + 3 * b + c = 9)
  (hâ : a + b + 3 * c = 19) :
  a * b * c = -56 :=
begin
  have ha : a = -4, linarith,
  have hb : b = 2, linarith,
  have hc : c = 7, linarith,
  rw [ha, hb, hc],
  norm_num,
end