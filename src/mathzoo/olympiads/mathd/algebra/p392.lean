/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom mathd_algebra_392
  (n : ℕ)
  (h₀ : even n)
  (h₁ : (↑n - 2)^2 + ↑n^2 + (↑n + 2)^2 = (12296:ℤ)) :
  ((↑n - 2) * ↑n * (↑n + 2)) / 8 = (32736:ℤ) 