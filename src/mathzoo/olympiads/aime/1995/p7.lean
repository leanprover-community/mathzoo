/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

axiom aime_1995_p7
  (k m n : ℕ+)
  (t : ℝ)
  (h0 : nat.gcd m n = 1)
  (h1 : (1 + real.sin t) * (1 + real.cos t) = 5/4)
  (h2 : (1 - real.sin t) * (1- real.cos t) = m/n - real.sqrt k):
  k + m + n = 27 