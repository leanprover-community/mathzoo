-- #mathlib 2022-02-16 8a286af6e972afb8aaa36786edeb6dd5676f7b53
/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import imports.miniF2F

open_locale nat rat real big_operators topological_space

theorem amc12a_2021_p9 :
  ∏ k in finset.range 7, (2^(2^k) + 3^(2^k)) = 3^128 - 2^128 :=
begin
  simp only [finset.prod_range_succ],
  norm_num,
end
