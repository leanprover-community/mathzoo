/-
Copyright (c) 2022 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Daniel Selsam
-/
import data.nat.basic
import data.nat.digits
import data.list.basic
import data.finset.basic

/--
How many integers between $2020$ and $2400$ have four distinct digits arranged in increasing order? 
(For example, $2347$ is one integer.)
-/
axiom amc8_2020_p7 :
  let s := ((finset.range 2400).filter (λ n, n ≥ 2020 ∧ list.pairwise (<) (nat.digits 10 n))) in
  s.card = 15
