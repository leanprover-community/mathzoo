-- #mathlib 2022-02-16 8a286af6e972afb8aaa36786edeb6dd5676f7b53
/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import imports.miniF2F

open_locale nat rat real big_operators topological_space

theorem mathd_algebra_110
  (q e : ℂ)
  (h₀ : q = 2 - 2 * complex.I)
  (h₁ : e = 5 + 5 * complex.I) :
  q * e = 20 :=
begin
  rw [h₀, h₁],
  ring_nf,
  rw [pow_two, complex.I_mul_I],
  ring,
end