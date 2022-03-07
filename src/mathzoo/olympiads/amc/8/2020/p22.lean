/-
Copyright (c) 2022 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Daniel Selsam
-/
import data.nat.basic
import data.nat.digits
import data.finset.basic

-- `f` is the collatz function
def f (n : ℕ) : ℕ := 
  if 2 ∣ n then n / 2 else 3 * n + 1

def simulate : Π (k : ℕ) (n : ℕ), list ℕ 
  | _ 1     := [1]
  | 0 n     := [n]
  | (k+1) n := n :: simulate k (f n)

example : simulate 6 7 = [7, 22, 11, 34, 17, 52, 26] := rfl

@[reducible] 
def gcond (n : ℕ) : Prop :=
  3 ∣ (n-1) ∧ ¬ (2 ∣ ((n - 1)/3))

-- `g` is the inverse of `f`
-- f (2 * n) = n
-- f ((n-1)/3) = n ↔ (n-1)/3 is an odd integer
def g (n : ℕ) : finset ℕ :=
  if gcond n then { 2 * n, (n - 1) / 3 } else { 2 * n } 

lemma not_gcond (n : ℕ) : ¬ gcond n → (¬ (3 ∣ (n-1)) ∨ 2 ∣ ((n - 1)/3)) :=
begin
  unfold gcond,
  intro h_ngcond,
  simp at h_ngcond,
  by_cases h : 3 ∣ (n-1),
  simp [h_ngcond h],
  simp [h]
end

lemma cancel_shift {d n k : ℕ} : d ∣ (n - k) → k ≤ n → d * ((n - k) / d) + k = n :=
begin
  intros h_div h_le,
  suffices h_goal : d * ((n - k) / d) = n - k, 
  { simp [h_goal], apply nat.sub_add_cancel h_le,  },
  { rw [mul_comm], apply nat.div_mul_cancel h_div },
end

lemma g_inv_f : ∀ (n : ℕ), 1 ≤ n → ∀ (k : ℕ), k ∈ g n ↔ f k = n :=
begin
  intros n h_ge1 k,
  split,
  -- k ∈ g n → f k = n
  {
    intro hk_gn,
    dunfold g at hk_gn,
    by_cases h_cond : gcond n,
    -- case 1: can reach n from two different positions
    { 
      simp [h_cond] at hk_gn, 
      cases hk_gn ; subst hk_gn,
      -- f (2 * n) = n
      { simp [f], },
      -- f ((n-1)/3) = n
      { 
        unfold gcond at h_cond,
        simp [f, h_cond.2, cancel_shift h_cond.1 h_ge1],  
      },
    },
    -- case 2: can only reach n from above
    {
      simp [h_cond] at hk_gn,
      simp [f, hk_gn],
    },
  },
  -- f k = n → k ∈ g n
  {
    intro h_fk,
    subst h_fk,
    simp [g],
    by_cases h_gcond : gcond (f k),
    -- case 1: gcond (f k)
    { 
      simp [h_gcond],
      unfold gcond at h_gcond,
      unfold f at *,
      by_cases h_2k : 2 ∣ k,
      { simp [h_2k], left, rw [mul_comm, nat.div_mul_cancel h_2k] },
      { simp [h_2k] }
    },
    -- case 2: ¬ gcond (f k)
    { 
      simp [h_gcond],
      unfold f at *,
      by_cases h_2k : 2 ∣ k,
      { simp [h_2k], rw [mul_comm, nat.div_mul_cancel h_2k] },
      { simp [h_2k] at h_gcond, contradiction }
    }
  }
end

def iterate {α : Type} (f : α → α) : ℕ → α → α
| 0 x := x
| (steps+1) x := iterate steps (f x)

def finset.iterate {α : Type} [decidable_eq α] (g : α → finset α) : ℕ → α → finset α
| 0 x := {x}
| (steps+1) x := (finset.iterate steps x).bUnion g

theorem iterate_g_ge1 : ∀ {steps x : ℕ}, x ∈ finset.iterate g steps 1 → 1 ≤ x
| 0 x h := 
begin 
  clear iterate_g_ge1, 
  simp [finset.iterate, g, gcond] at h, 
  subst h
end
| (steps+1) x₀ h :=
begin
  simp [finset.iterate, g] at h, 
  obtain ⟨x, hx, hy⟩ := h,
  have hx_ge1 : 1 ≤ x := iterate_g_ge1 hx,
  have one_le2x : 1 ≤ 2 * x,
  { 
    transitivity x, 
    exact hx_ge1, 
    exact nat.le_mul_of_pos_left (nat.zero_lt_succ 1) 
  },
  by_cases h_cond : (gcond x),
  -- case 1: 2 possibilities
  { 
    simp [h_cond] at hy,
    cases hy,
    -- easy case
    { 
      subst hy,
      exact one_le2x
    },
    -- hard (3) case
    {
      subst hy,
      simp [gcond] at h_cond,
      --obtain ⟨⟨z3, h_z3⟩, h_x2⟩ := h_cond,
      obtain ⟨h_x3, h_x2⟩ := h_cond,
      -- We first rule out 0-3
      cases x, { norm_num at h_x2 },
      cases x, { norm_num at h_x2 },
      cases x, { norm_num at h_x2 },
      cases x, { norm_num at h_x2 },
      show 1 ≤ (x+3) / 3,
      norm_num,
      show 1 ≤ (x/3) + 1,
      exact nat.le_add_left _ _
    }
  },
  -- gcond=false
  {
    simp [h_cond] at hy,
    subst hy,
    exact one_le2x
  }
end

theorem iterate_f_ge1 : ∀ {steps x : ℕ}, iterate f steps x = 1 → x ≥ 1
| 0 x h_f := by { simp [iterate] at h_f, subst h_f, apply le_refl }
| (steps+1) x h_f :=
begin
simp [iterate] at h_f,
have hx_ge1 : 1 ≤ f x := iterate_f_ge1 h_f,
simp [f] at hx_ge1,
by_cases h_x : 2 ∣ x,
{
  simp [h_x] at hx_ge1,
  rw [← nat.div_mul_cancel h_x],
  rw [mul_comm],
  transitivity x/2,
  apply nat.le_mul_of_pos_left (nat.zero_lt_succ 1),
  exact hx_ge1
},
{
  simp [h_x] at hx_ge1,
  cases x, { simp at h_x, contradiction },
  show 1 ≤ x+1,
  apply nat.le_add_left
}
end

lemma iter_g_inv_f : ∀ (steps k : ℕ), k ∈ finset.iterate g steps 1 ↔ iterate f steps k = 1 
| 0 _ := by split ; simp [f, g, iterate, finset.iterate, gcond]
| (steps+1) k :=
begin
  split,
  {
    intro h_kg,
    simp [iterate],
    simp [finset.iterate] at h_kg,
    obtain ⟨x, h_x, h_y⟩ := h_kg,
    rw [g_inv_f _ (iterate_g_ge1 h_x) k] at h_y,
    subst h_y,
    exact (iter_g_inv_f _ _).mp h_x
  },
  {
    intro h_kg,
    simp [finset.iterate],
    simp [iterate] at h_kg,
    existsi f k,
    split,
    { exact (iter_g_inv_f _ _).mpr h_kg },
    { rw [g_inv_f _ (iterate_f_ge1 h_kg) _]}
  }
end

theorem amc8_2020_p22 :
  let s : set ℕ := {n | iterate f 6 n = 1 } in
  ∃ (fs : finset ℕ), ↑fs = s ∧ fs.sum id = 83 :=
begin
  intro s,
  simp [s], clear s,
  existsi (finset.iterate g 6 1),
  split,
  -- Restatement of our main lemma
  { 
    ext, 
    simp [iter_g_inv_f] 
  },
  -- Now for the computation
  { 
    dec_trivial
  }
end
