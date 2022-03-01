/-
Copyright (c) 2022 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Daniel Selsam
-/
import data.nat.basic
import data.list.basic
import data.list.pairwise
import tactic.interval_cases

open tactic

/--
Aaron, Darren, Karen, Maren, and Sharon rode on a small train that has five cars that seat one person each.
Maren sat in the last car. Aaron sat directly behind Sharon. Darren sat in one of the cars in front of Aaron.
At least one person sat between Karen and Darren. Who sat in the middle car?
-/
theorem amc8_2020_p6 (aaron darren karen maren sharon : ℕ) :
  list.pairwise (≠) [aaron, darren, karen, maren, sharon]
  → list.all [aaron, darren, karen, maren, sharon] (λ n, n < 5)
  → maren = 0
  → aaron + 1 = sharon
  → darren > aaron
  → max darren karen > min darren karen + 1
  → aaron = 2 :=
begin
  intros h_distinct h_bounds h_maren h_aaron_sharon h_darren_aaron h_darren_karen,
  subst h_maren,
  simp at h_distinct h_bounds,
  cases_matching* [_ ∧ _],
  interval_cases aaron ; try { contradiction } ; subst_vars ;
    interval_cases darren ; try { contradiction } ; subst_vars ;
    interval_cases karen  ; try { contradiction } ; subst_vars ;
    simp at h_darren_karen ; contradiction
end 
