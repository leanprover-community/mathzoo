-- #mathlib 2022-02-16 8a286af6e972afb8aaa36786edeb6dd5676f7b53
/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom amc12a_2021_p12
  (a b c d : ℝ)
  (f : ℂ → ℂ)
  (h₀ : ∀ z, f z = z^6 - 10 * z^5 + a * z^4 + b * z^3 + c * z^2 + d * z + 16)
  (h₁ : ∀ z, f z = 0 → (z.im = 0 ∧ 0 < z.re ∧ ↑(int.floor z.re) = z.re)) :
  b = 88 