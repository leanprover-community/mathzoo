/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

theorem mathd_numbertheory_326
  (n : ℕ)
  (h₀ : (↑n - 1) * ↑n * (↑n + 1) = (720:ℤ)) :
  (n + 1) = 10 :=
begin
  cases n,
  norm_num at h₀,
  norm_num [mul_add] at h₀,
  norm_num [nat.succ_eq_add_one] at *,
  nlinarith,
end