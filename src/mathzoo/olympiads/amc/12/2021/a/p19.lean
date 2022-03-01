/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom amc12a_2021_p19
  (h₀ : fintype {x : ℝ | 0 ≤ x ∧ x ≤ real.pi ∧ real.sin (real.pi / 2 * real.cos x) = real.cos (real.pi / 2 * real.sin x)}) :
  finset.card {x : ℝ | 0 ≤ x ∧ x ≤ real.pi ∧ real.sin (real.pi / 2 * real.cos x) = real.cos (real.pi / 2 * real.sin x)}.to_finset = 2 