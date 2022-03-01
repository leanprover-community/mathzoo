/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

theorem mathd_numbertheory_24 :
  (∑ k in (finset.erase (finset.range 10) 0), 11^k) % 100 = 59 :=
begin
  norm_num,
  rw finset.sum_eq_multiset_sum,
  norm_num,
end