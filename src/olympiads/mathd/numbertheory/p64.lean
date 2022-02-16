-- #mathlib 2022-02-16 8a286af6e972afb8aaa36786edeb6dd5676f7b53
/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import imports.miniF2F

open_locale nat rat real big_operators topological_space

theorem mathd_numbertheory_64 :
  is_least { x : ℕ | 30 * x ≡ 42 [MOD 47] } 39 :=
begin
  fsplit,
  norm_num,
  dec_trivial!,
  rintro ⟨n, hn⟩,
  simp,
  dec_trivial,
  intros h,
  norm_num,
  contrapose! h,
  dec_trivial!,
end