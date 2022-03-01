/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

theorem amc12a_2021_p9 :
  ∏ k in finset.range 7, (2^(2^k) + 3^(2^k)) = 3^128 - 2^128 :=
begin
  simp only [finset.prod_range_succ],
  norm_num,
end

-- Sum a sequence by grouping adjacent terms.
lemma sum_pairs (n : ℕ) (f : ℕ → ℚ) :
  ∑ k in (finset.range (2 * n)), f k = ∑ k in (finset.range n), (f (2 * k) + f (2 * k + 1)) :=
begin
  induction n with pn hpn,
  { simp only [finset.sum_empty, finset.range_zero, mul_zero] },
  { have hs: (2 * pn.succ) = (2 * pn).succ.succ := rfl,
    rw [finset.sum_range_succ, ←hpn, hs, finset.sum_range_succ, finset.sum_range_succ],
    ring },
end