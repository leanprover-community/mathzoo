/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

theorem induction_seq_mul2pnp1
  (n : ℕ)
  (u : ℕ → ℕ)
  (h₀ : u 0 = 0)
  (h₁ : ∀ n, u (n + 1) = 2 * u n + (n + 1)) :
  u n = 2^(n + 1) - (n + 2) :=
begin
  apply eq_tsub_of_add_eq,
  simp [pow_succ],
  induction n with a ih,
  { simp [h₀, h₁] },
  norm_num [h₀, h₁],
  simp [nat.succ_eq_add_one],
  rw [add_left_comm, ← add_assoc],
  simp only [pow_succ'],
  rw [mul_two],
  linarith,
end