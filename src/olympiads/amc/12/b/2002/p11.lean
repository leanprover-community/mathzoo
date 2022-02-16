-- #mathlib 2022-02-16 8a286af6e972afb8aaa36786edeb6dd5676f7b53
/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom amc12b_2002_p11
  (a b : ℕ)
  (h₀ : nat.prime a)
  (h₁ : nat.prime b)
  (h₂ : nat.prime (a + b))
  (h₃ : nat.prime (a - b)) :
  nat.prime (a + b + (a - b + (a + b))) 