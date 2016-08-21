-- -------------------------------------------------------------- [ Ranges.idr ]
-- Module  : Koans.Ranges
--
-- License : This code is distributed under the BSD 3-Clause License
--           See the file LICENSE in the root directory for its full text.
-- --------------------------------------------------------------------- [ EOH ]

||| Exercises on ranges.
module Koans.Ranges

%access export

-- ------------------------------------------------------------------- [ Koans ]

rangeNums : Bool
rangeNums = ?fillme1 == [1..13]

stepUp : Bool
stepUp = ?fillme2 == [3,6..20]

stepDown : Bool
stepDown = ?fillme3 == [20,17..1]

stopMe : List Integer
stopMe = ?fillme4 [1..]

-- --------------------------------------------------------------------- [ EOF ]
