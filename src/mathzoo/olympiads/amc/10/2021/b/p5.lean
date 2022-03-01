/-
Copyright (c) 2022 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Daniel Selsam
-/
import data.nat.basic
import data.list.basic
import data.list.pairwise
import tactic.fin_cases

open tactic

/--
The ages of Jonie's four cousins are distinct single-digit positive integers. 
Two of the cousins' ages multiplied together give $24$, while the other two multiply to $30$. 
What is the sum of the ages of Jonie's four cousins?
-/
theorem amc10b_2021_p1 (c1 c2 c3 c4 : ℕ) :
  c1 * c2 = 24
  → c3 * c4 = 30 
  → list.pairwise (≠) [c1, c2, c3, c4]
  → list.all [c1, c2, c3, c4] (λ n, n < 10)
  → c1 ≤ c2 -- TODO: these should be wlog-ed rather than built-in
  → c3 ≤ c4
  → c1 + c2 + c3 + c4 = 22 := 
begin
  intros h12 h34 h_pairwise h_bounds h12_le h34_le,
  simp at h_pairwise h_bounds,
  cases_matching* [_ ∨ _, _ ∧ _],
  have h12_options : c1 = 3 ∧ c2 = 8 ∨ c1 = 4 ∧ c2 = 6, 
  {
    -- TODO: interval_cases hits a deterministic timeout on ⬝ < 10
    have h_c1 : c1 ∈ finset.range 10 := by simp *,
    lift c1 to finset.range 10 using h_c1,
    have h_c2 : c2 ∈ finset.range 10 := by simp *,
    lift c2 to finset.range 10 using h_c2,
    -- TODO: still very slow
    fin_cases c1 ; fin_cases c2 ; subst_vars ; norm_num * at *
  },
  have h34_options : c3 = 5 ∧ c4 = 6, 
  {
    -- TODO: interval_cases hits a deterministic timeout on ⬝ < 10
    have h_c3 : c3 ∈ finset.range 10 := by simp *,
    lift c3 to finset.range 10 using h_c3,
    have h_c4 : c4 ∈ finset.range 10 := by simp *,
    lift c4 to finset.range 10 using h_c4,
    -- TODO: still very slow
    fin_cases c3 ; fin_cases c4 ; subst_vars ; norm_num * at *
  },
  cases_matching* [_ ∨ _, _ ∧ _] ; simp * at *
end

