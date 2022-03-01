/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom mathd_algebra_215
  (h₀ : fintype {x : ℝ | (x + 3)^2 = 121}) :
  ∑ k in {x : ℝ | (x + 3)^2 = 121}.to_finset, k = -6 