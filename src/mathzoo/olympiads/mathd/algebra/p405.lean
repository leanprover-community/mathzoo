/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

/--
For how many positive integer values of $x$ is the sum $x^2+4x+4$ less than 20?
Answer: $2$.
Proof:
Note that since we can only use positive integers for $x$, the minimum will be x = 1.
Testing x = 2, we get $2^2 + 4\\cdot 2 + 4 = 16$.
Since $3^2 - 2^2 = 5$, we know that only $x = 1,2$ will work, thus, answer is $\\boxed{2}$.
--/
theorem mathd_algebra_405
  (x : ℕ)
  (h₀ : 0 < x)
  (h₁ : x^2 + 4 * x + 4 < 20) :
  x = 1 ∨ x = 2 :=
begin
  cases lt_trichotomy x 1 with h₂ h₂,
  { left, nlinarith },
  cases h₂,
  { simp * at * },
  right,
  nlinarith [h₁, h₂, 0],
end