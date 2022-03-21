/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

theorem mathd_numbertheory_211 :
  finset.card (finset.filter (λ n, 6 ∣ (4 * ↑n - (2:ℤ))) (finset.range 60)) = 20 :=
begin
  norm_cast,
end