/-
Copyright (c) 2022 OpenAI. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Daniel Selsam
-/
import logic.function.basic
import data.finset.card
import data.fintype.basic

/--
Five different awards are to be given to three students. 
Each student will receive at least one award. 
In how many different ways can the awards be distributed?
-/
theorem amc8_2020_p23 : 
  (finset.filter function.surjective finset.univ : finset (fin 5 → fin 3)).card = 150 := 
begin
  dec_trivial
end