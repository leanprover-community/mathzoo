-- #mathlib 2022-02-16 8a286af6e972afb8aaa36786edeb6dd5676f7b53
/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import imports.miniF2F

open_locale nat rat real big_operators topological_space

theorem numbertheory_4x3m7y3neq2003
  (x y : ℤ) :
  4 * x^3 - 7 * y^3 ≠ 2003 :=
begin
  intro hneq,
  apply_fun (coe : ℤ → zmod 7) at hneq,
  push_cast at hneq,
  have : (2003 : zmod 7) = (1 : zmod 7),
    dec_trivial,
  rw this at hneq,
  have : (7 : zmod 7) = (0 : zmod 7),
    dec_trivial,
  rw this at hneq,
  rw zero_mul at hneq,
  rw sub_zero at hneq,
  have main : ∀ (x : zmod 7), x^3 ∈ [(0 : zmod 7), 1, -1],
    dec_trivial,
  rcases main x with h' | h' | h' | h,
  iterate 3 {
    rw h' at hneq,
    revert hneq,
    dec_trivial,
  },
  exact h,
end