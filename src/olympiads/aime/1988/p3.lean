-- #mathlib 2022-02-16 8a286af6e972afb8aaa36786edeb6dd5676f7b53
/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom aime_1988_p3
  (x : ℝ)
  (h₀ : 0 < x)
  (h₁ : real.log (real.log x / real.log 8) / real.log 2 = real.log (real.log x / real.log 2) / real.log 8) :
  (real.log x / real.log 2)^2 = 27 