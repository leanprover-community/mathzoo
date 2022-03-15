/-
Copyright (c) 2021 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kunhao Zheng, Stanislas Polu, David Renshaw, OpenAI GPT-f
-/
import mathzoo.imports.miniF2F

open_locale nat rat real big_operators topological_space

/--
A group of $N$ students, where $N < 50$, is on a field trip.
If their teacher puts them in groups of 8, the last group has 5 students.
If their teacher instead puts them in groups of 6, the last group has 3 students.
What is the sum of all possible values of $N$?
Answer: $66$.
--/
theorem mathd_numbertheory_149 :
  ∑ k in (finset.filter (λ x, x % 8 = 5 ∧ x % 6 = 3) (finset.range 50)), k = 66 :=
begin
  congr',
end