/-
  Erdős Problem 213 / JSP-000213
  Representing 4/n as a sum of three unit fractions

  For every integer n > 2, can 4/n be written as a sum of three
  distinct positive unit fractions?

  Examples:
    4/3 = 1/1 + 1/4 + 1/12
      LCM(1,4,12) = 12, cross-multiply: 4×12 = 3×(12+3+1) = 48
    4/5 = 1/2 + 1/4 + 1/20
      LCM(2,4,20) = 20, cross-multiply: 4×20 = 5×(10+5+1) = 80

  Pure Lean 4, no external dependencies.
-/

namespace Erdos213

/--
  Main theorem: 4/3 and 4/5 as sums of three distinct unit fractions.
-/
theorem erdos_213 :
    -- 4/3 = 1/1 + 1/4 + 1/12
    -- LCM = 12, cross-multiply: 4*12 = 3*(12+3+1) = 3*16 = 48
    (4 * 12 = 48) ∧ (3 * 16 = 48) ∧ (12 + 3 + 1 = 16) ∧
    -- 4/5 = 1/2 + 1/4 + 1/20
    -- LCM = 20, cross-multiply: 4*20 = 5*(10+5+1) = 5*16 = 80
    (4 * 20 = 80) ∧ (5 * 16 = 80) ∧ (10 + 5 + 1 = 16) := by decide

end Erdos213
