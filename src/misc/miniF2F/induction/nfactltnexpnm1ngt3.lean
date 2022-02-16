-- #mathlib 2022-02-16 8a286af6e972afb8aaa36786edeb6dd5676f7b53
/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import imports.miniF2F

open_locale nat rat real big_operators topological_space

theorem induction_nfactltnexpnm1ngt3
  (n : ℕ)
  (h₀ : 3 ≤ n) :
  nat.factorial n < n^(n - 1) :=
begin
  induction h₀ with k h₀ IH,
  { norm_num },
  {
    have k_ge_one : 1 ≤ k := le_trans dec_trivial h₀,
    calc k.succ.factorial = k.succ * k.factorial : rfl
                      ... < k.succ * k ^ (k-1) : (mul_lt_mul_left (nat.succ_pos k)).mpr IH
                      ... ≤ k.succ * (k.succ) ^ (k-1): nat.mul_le_mul_left _ $ nat.pow_le_pow_of_le_left (nat.le_succ k) (k-1)
                      ... = k.succ ^ (k-1 + 1): by rw ← (pow_succ k.succ (k-1))
                      ... = k.succ ^ k: by rw nat.sub_add_cancel k_ge_one,
  }
end