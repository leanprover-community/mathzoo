/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

theorem mathd_numbertheory_109
  (v : ℕ → ℕ)
  (h₀ : ∀ n, v n = 2 * n - 1) :
  (∑ k in (finset.erase (finset.range 101) 0), v k) % 7 = 4 :=
begin
  norm_num,
  simp [h₀],
  rw finset.sum_erase,
  swap,
  { simp, },
  norm_num [finset.sum_range_succ, h₀],
end