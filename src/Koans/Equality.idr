-- ------------------------------------------------------------ [ Equality.idr ]
-- Module  : Koans.Equality
--
-- License : This code is distributed under the BSD 3-Clause License
--           See the file LICENSE in the root directory for its full text.
-- --------------------------------------------------------------------- [ EOH ]

||| Exercises on equality.
module Koans.Equality

import Koans.Test

%access export

-- ------------------------------------------------------------------- [ Koans ]

equalityEq : Bool
equalityEq = ?fillme1 == True

equalityNeq : Bool
equalityNeq = ?fillme2 /= 3

equalityGeq : Bool
equalityGeq = ?fillme3 >= 4

equalityGtr : Bool
equalityGtr = ?fillme4 > 4

equalityLeq : Bool
equalityLeq = ?fillme5 <= 5

equalityLess : Bool
equalityLess = ?fillme6 < 6

-- ------------------------------------------------------------------- [ Tests ]

testEqualityEq : IO ()
testEqualityEq = assert equalityEq

testEqualityNeq : IO ()
testEqualityNeq = assert equalityNeq

testEqualityGeq : IO ()
testEqualityGeq = assert equalityGeq

testEqualityGtr : IO ()
testEqualityGtr = assert equalityGtr

testEqualityLeq : IO ()
testEqualityLeq = assert equalityLeq

testEqualityLess : IO ()
testEqualityLess = assert equalityLess

-- --------------------------------------------------------------------- [ EOF ]
