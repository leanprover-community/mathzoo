/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

theorem mathd_algebra_15
  (s : ℕ+ → ℕ+ → ℕ+)
  (h₀ : ∀ a b, s a b = a^(b:ℕ) + b^(a:ℕ)) :
  s 2 6 = 100 :=
begin
  rw h₀,
  refl,
end