/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

/--
Suppose that $f(x+3)=3x^2 + 7x + 4$ and $f(x)=ax^2 + bx + c$. What is $a+b+c$?
Answer: $2$
--/
theorem amc12a_2009_p9
  (a b c : ℝ)
  (f : ℝ → ℝ)
  (h₀ : ∀ x, f (x + 3) = 3 * x^2 + 7 * x + 4)
  (h₁ : ∀ x, f x = a * x^2 + b * x + c) :
  a + b + c = 2 :=
begin
  simp [*, pow_succ'] at *,
  linarith [h₀ 0, h₀ 1, h₀ 2],
end