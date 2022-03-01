/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom aime_1994_p3
  (x : ℤ)
  (f : ℤ → ℤ)
  (h0 : f x + f (x-1) = x^2)
  (h1 : f 19 = 94):
  f (94) % 1000 = 561 