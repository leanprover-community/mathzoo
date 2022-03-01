/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom induction_1pxpownlt1pnx
  (x : ℝ)
  (n : ℕ+)
  (h₀ : -1 < x) :
  (1 + ↑n*x) ≤ (1 + x)^(n:ℕ) 