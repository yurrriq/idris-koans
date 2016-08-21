-- -------------------------------------------------------------- [ Tuples.idr ]
-- Module  : Koans.Tuples
--
-- License : This code is distributed under the BSD 3-Clause License
--           See the file LICENSE in the root directory for its full text.
-- --------------------------------------------------------------------- [ EOH ]

module Koans.Tuples

-- ------------------------------------------------------------------- [ Koans ]

firstPair : Bool
firstPair = ?fillme1 == fst ("First", "Pair")

secondPair : Bool
secondPair = ?fillme2 == snd ("Second", "Pair")

whatAmI : Vect 5 (Int, Bool)
whatAmI = ?fillme3

ws : Vect 5 String
ws = ["zip", "a", "dee", "doo", "dah"]

is : Vect 5 Int
is = ?fillme4

myFirstZip : Bool
myFirstZip = zip ws is == ?fillme5

whatIsMyResult : Bool
whatIsMyResult = ?fillme6 == Vect.zipWith (+) is is

-- --------------------------------------------------------------------- [ EOF ]
