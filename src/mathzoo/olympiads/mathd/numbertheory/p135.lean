/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom mathd_numbertheory_135
  (n a b c: ℕ)
  (h₀ : n = 3^17 + 3^10)
  (h₁ : 11 ∣ (n + 1))
  (h₂ : odd a ∧ odd c)
  (h₃ : ¬ 3 ∣ b)
  (h₄ : n = 10*(10*(10*(10*(10*(10*(10*(10*a +b) +c) +a) +c) +c) +b) +a) +b) :
  10*(10 * a + b) + c = 129 