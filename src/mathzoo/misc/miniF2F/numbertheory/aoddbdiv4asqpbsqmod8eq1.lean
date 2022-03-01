-- #mathlib 2022-02-16 8a286af6e972afb8aaa36786edeb6dd5676f7b53
/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom numbertheory_aoddbdiv4asqpbsqmod8eq1
  (a : ℤ)
  (b : ℕ)
  (h₀ : odd a)
  (h₁ : 4 ∣ b) :
  (a^2 + b^2) % 8 = 1 