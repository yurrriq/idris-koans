-- ------------------------------------------------ [ HigherOrderFunctions.idr ]
-- Module  : Koans.HigherOrderFunctions
--
-- License : This code is distributed under the BSD 3-Clause License
--           See the file LICENSE in the root directory for its full text.
-- --------------------------------------------------------------------- [ EOH ]

||| Exercises using higher-order functions.
module Koans.HigherOrderFunctions

import Koans.Test

%access export

-- ----------------------------------------------------------------- [ Mapping ]
-- Maps are used to map a function to elements in a list.
-- --------------------------------------------------------------------- [ EOH ]

myFirstMap : Bool
myFirstMap = ?fillme1 == map (2*) [1..4]

mySecondMap : Bool
mySecondMap = [1, 4, 9, 16, 25] == map ?fillme2 [1..5]

myThirdMap : Bool
myThirdMap = [25, 16, 9, 4, 1] == map ?fillme3 [1..5]

-- ----------------------------------------------------------------- [ Folding ]
-- Folds are used to combine elements in a list from start to finish
-- using a function.
-- --------------------------------------------------------------------- [ EOH ]

myFirstFold : Bool
myFirstFold = foldl (+) 0 [1..4] == ?fillme4

mySecondFold : Bool
mySecondFold = 5 == foldl ?fillme5 5 [1..4]

-- ---------------------------------------------------------------- [ Scanning ]
-- Scans are like fold, but you see the intermediate results,
-- and then the result.
--
-- TODO Add examples for scanr and foldr
-- --------------------------------------------------------------------- [ EOH ]

||| Produce a List of left fols of prefixes of the given List.
||| @ f   The combining function.
||| @ acc The initial value.
||| @ xs  The List to process.
scanl : (f : a -> b -> a) -> (acc : a) -> (xs : List b) -> List a
scanl f acc (x :: xs) = acc :: scanl f (f acc x) xs

myFirstScan : Bool
myFirstScan = scanl max 5 [1,2,3,4] == ?fillme6

mySecondScan : Bool
mySecondScan = scanl ?fillme7 5 [1,2,10,1] == [5,5,5,10,10]

myThirdScan : Bool
myThirdScan = scanl (/) 64.0 [4,2,4] == ?fillme8

-- --------------------------------------------------------------- [ Filtering ]
-- You can filter things as well.
-- --------------------------------------------------------------------- [ EOH ]

private
xs : List Int
xs = [1,2,3,4,5,6,7,8,9,10]

myFirstFilter : Bool
myFirstFilter = filter (>5) xs == ?fillme15

mySecondFilter : Bool
mySecondFilter = filter ?fillme16 [10,20,30,40,50,60,70,80,90,100] == xs

-- --------------------------------------------------------------- [ Combining ]
-- You can combine functions as well.
-- --------------------------------------------------------------------- [ EOH ]

myFirstCombi : Bool
myFirstCombi =
  let filteredThenMapped = map ?fillme17 (filter ?fillme18 xs)
  in  ["bang","boom","bang","boom","bang"] == filteredThenMapped

-- ------------------------------------------------------------------- [ Tests ]

testMyFirstMap : IO ()
testMyFirstMap = assert myFirstMap

testMySecondMap : IO ()
testMySecondMap = assert mySecondMap

testMyThirdMap : IO ()
testMyThirdMap = assert myThirdMap

testMyFirstFold : IO ()
testMyFirstFold = assert myFirstFold

testMySecondFold : IO ()
testMySecondFold = assert mySecondFold

testMyFirstScan : IO ()
testMyFirstScan = assert myFirstScan

testMySecondScan : IO ()
testMySecondScan = assert mySecondScan

testMyThirdScan : IO ()
testMyThirdScan = assert myThirdScan

testMyFirstFilter : IO ()
testMyFirstFilter = assert myFirstFilter

testMySecondFilter : IO ()
testMySecondFilter = assert mySecondFilter

testMyFirstCombi : IO ()
testMyFirstCombi = assert myFirstCombi

-- --------------------------------------------------------------------- [ EOF ]
