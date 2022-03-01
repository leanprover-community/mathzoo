/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom aime_1984_p5
  (a b : ℝ)
  (h₀ : real.log a / real.log 8 + real.log (b^2) / real.log 4 = 5)
  (h₁ : real.log b / real.log 8 + real.log (a^2) / real.log 4 = 7) :
  a * b = 512 