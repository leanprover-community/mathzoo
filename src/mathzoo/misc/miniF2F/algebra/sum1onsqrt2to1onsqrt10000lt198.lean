/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom algebra_sum1onsqrt2to1onsqrt10000lt198 :
  ∑ k in finset.range 10001 \ finset.range 2, (1 / real.sqrt k) < 198 