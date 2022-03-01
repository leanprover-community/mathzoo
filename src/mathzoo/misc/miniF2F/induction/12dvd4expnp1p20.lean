/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

theorem induction_12dvd4expnp1p20
  (n : ℕ) :
  12 ∣ 4^(n+1) + 20 :=
begin
  have dvd_of_dvd_add_mul_left : ∀ (a b n : ℕ), a ∣ b + a * n → a ∣ b :=
  begin
    intros a b n,
    refine (nat.dvd_add_left _).mp,
    exact (dvd_mul_right a n),
  end,
  induction n with k IH,
  { dec_trivial },
  {
    rw pow_succ,
    -- If we add 60 to RHS, then we can factor the 4 to use IH
    apply dvd_of_dvd_add_mul_left 12 (4 * 4 ^ k.succ + 20) 5,
    exact dvd_mul_of_dvd_right IH 4,
  }
end