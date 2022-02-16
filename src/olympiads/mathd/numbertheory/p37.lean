-- #mathlib 2022-02-16 8a286af6e972afb8aaa36786edeb6dd5676f7b53
/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import imports.miniF2F

open_locale nat rat real big_operators topological_space

theorem mathd_numbertheory_37 :
  (nat.lcm 9999 100001) = 90900909 :=
begin
 let e : empty → fin 1 → ℕ := λ _, 1,
  have : fintype.card (fin 1) = 1 := fintype.card_fin 1,
  unfold nat.lcm,
  have : fintype.card (fin 1) = 1 := fintype.card_fin 1,
  simp only [eq_comm] at this,
  rw this,
  simp [bit1],
  norm_num,
end