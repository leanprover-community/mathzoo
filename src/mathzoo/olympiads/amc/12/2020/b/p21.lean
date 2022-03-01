/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom amc12b_2020_p21
  (h₀ : fintype {n : ℕ+ | (↑n + (1000:ℝ)) / (70:ℝ) = int.floor (real.sqrt n)}) :
  finset.card {n : ℕ+ | (↑n + (1000:ℝ)) / (70:ℝ) = int.floor (real.sqrt n)}.to_finset = 6 