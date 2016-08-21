-- --------------------------------------------------------------- [ Lists.idr ]
-- Module  : Koans.Lists
--
-- License : This code is distributed under the BSD 3-Clause License
--           See the file LICENSE in the root directory for its full text.
-- --------------------------------------------------------------------- [ EOH ]

||| Exercises on lists
module Koans.Lists

-- ------------------------------------------------------------------- [ Koans ]

-- What is the type of this list?
nats : ?someType
nats = [0,1,2,3,4,5,6,7,9]

-- ----------------------------------------------------------- [ Odds and Evens]
-- Reproduce the list [0,1,3,5,7,9,2,4,6,8] using the following functions.
-- --------------------------------------------------------------------- [ EOH ]

odds : List Int
odds = [1,3,5,7,9]

evens : List Int
evens = [2,4,6,8]

zero : Int
zero = 0

zeroOddsEvens : Bool
zeroOddsEvens = ?fillme2 ++ odds ++ ?fillme3 == [0,1,3,5,7,9,2,4,6,8]

-- ----------------------------------------------------------------- [ Results ]
-- Complete the result of following functions.
-- --------------------------------------------------------------------- [ EOH ]

headOList : Bool
headOList = ?fillme4 == Vect.head [5,4,3,2,1]

tailOList : Bool
tailOList = ?fillme5 == Vect.tail [0,1,2,3,4,5]

lastOList : Bool
lastOList = ?fillme6 == Vect.last [5,4,3,2,1]

initOList : Bool
initOList = ?fillme7 == Vect.init [1,2,3,4,5,6]

lengthOList : Bool
lengthOList = ?fillme8 == List.length [1,2,3,4,5]

reverseTheList : Bool
reverseTheList = ?fillme9 == List.reverse [1,2,3,4,5]

first3 : Bool
first3 = ?fillme10 == take 3 [1..10]

drop3 : Bool
drop3 = ?fillme11 == drop 3 [1..10]

countAllTheNumbers : Bool
countAllTheNumbers = ?fillme12 == sum [1..10]

timesAllTheNnumbers : Bool
timesAllTheNnumbers = ?fillme13 == product [1..10]

elementOrNot : Bool
elementOrNot = List.elem 4 ?fillme14 == True

-- --------------------------------------------------------------- [ Stop Pete ]

-- Make this function true.
stopPete : Bool
stopPete = ?fillme15 (repeat 3) == [3,3,3,3]

-- --------------------------------------------------------------------- [ EOF ]
