--#mathlib 2022-02-16 8a286af6e972afb8aaa36786edeb6dd5676f7b53
/-
Copyright (c) 2020 Ruben Van de Velde, Stanislas Polu. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Ruben Van de Velde, Stanislas Polu
-/

import data.real.basic
import analysis.normed_space.basic

/-- IMO 1972 B2

Problem: `f` and `g` are real-valued functions defined on the real line. For all `x` and `y`,
`f(x + y) + f(x - y) = 2f(x)g(y)`. `f` is not identically zero and `|f(x)| ≤ 1` for all `x`.
Prove that `|g(x)| ≤ 1` for all `x`.

This is a more concise version of the proof proposed by Ruben Van de Velde.
-/
theorem imo1972_p5_alt1 (f g : ℝ → ℝ)
  (hf1 : ∀ x, ∀ y, (f (x+y) + f(x-y)) = 2 * f(x) * g(y))
  (hf2 : bdd_above (set.range (λ x, ∥f x∥)))
  (hf3 : ∃ x, f(x) ≠ 0)
  (y : ℝ) :
  ∥g(y)∥ ≤ 1 :=
begin
  obtain ⟨x, hx⟩ := hf3,
  set k := ⨆ x, ∥f x∥,
  have h : ∀ x, ∥f x∥ ≤ k := le_csupr hf2,
  by_contra' H,
  have hgy : 0 < ∥g y∥,
    by linarith,
  have k_pos : 0 < k := lt_of_lt_of_le (norm_pos_iff.mpr hx) (h x),
  have : k / ∥g y∥ < k := (div_lt_iff hgy).mpr (lt_mul_of_one_lt_right k_pos H),
  have : k ≤ k / ∥g y∥,
  { suffices : ∀ x, ∥f x∥ ≤ k / ∥g y∥, from csupr_le this,
    intro x,
    suffices : 2 * (∥f x∥ * ∥g y∥) ≤ 2 * k,
      by { rwa [le_div_iff hgy, ←mul_le_mul_left zero_lt_two], apply_instance },
    calc 2 * (∥f x∥ * ∥g y∥)
        = ∥2 * f x * g y∥           : by simp [abs_mul, mul_assoc]
    ... = ∥f (x + y) + f (x - y)∥   : by rw hf1
    ... ≤ ∥f (x + y)∥ + ∥f (x - y)∥ : abs_add _ _
    ... ≤ 2 * k                     : by linarith [h (x+y), h (x -y)] },
  linarith,
end
