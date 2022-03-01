/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

theorem mathd_algebra_412
  (x y : ℝ)
  (h₀ : x + y = 25)
  (h₁ : x - y = 11) :
  x = 18 :=
begin
  linarith,
end