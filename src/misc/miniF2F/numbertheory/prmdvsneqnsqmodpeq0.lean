-- #mathlib 2022-02-16 8a286af6e972afb8aaa36786edeb6dd5676f7b53
/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import imports.miniF2F

open_locale nat rat real big_operators topological_space

theorem numbertheory_prmdvsneqnsqmodpeq0
  (n : ℤ)
  (p : ℕ)
  (h₀ : nat.prime p) :
  ↑p ∣ n ↔ (n^2) % p = 0 :=
begin
  simp [nat.dvd_prime_pow (show nat.prime p, from h₀), pow_succ],
  simp only [int.coe_nat_dvd_right, int.coe_nat_dvd_left, int.nat_abs_mul],
  rw nat.prime.dvd_mul,
  { tauto },
  assumption,
end