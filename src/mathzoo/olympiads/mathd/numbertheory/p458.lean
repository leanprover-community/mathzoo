/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

theorem mathd_numbertheory_458
  (n : ℕ)
  (h₀ : n % 8 = 7) :
  n % 4 = 3 :=
begin
  conv_lhs { rw ← nat.mod_add_div n 8 },
  norm_num [nat.mul_mod, h₀, nat.add_mod],
end