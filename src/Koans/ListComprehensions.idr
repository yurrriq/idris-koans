-- -------------------------------------------------- [ ListComprehensions.idr ]
-- Module  : Koans.ListComprehensions
--
-- License : This code is distributed under the BSD 3-Clause License
--           See the file LICENSE in the root directory for its full text.
-- --------------------------------------------------------------------- [ EOH ]

||| Exercises on list comprehensions.
module Koans.ListComprehensions

import Koans.Test

%access export

-- ------------------------------------------------------------------- [ Koans ]

-- What is the result of the list comprehension?
listCompZero : Bool
listCompZero = ?fillme1 == with Classes [ x + x | x <- [1..5] ]

||| Write a list comprehension that returns all the
||| numbers divisible by four, doubled.
myFirstListComp : List Integer -> List Integer
myFirstListComp xs = ?fillme2

computeList : Bool
computeList = myFirstListComp [1..10] == [8,16]

||| Return all the numbers between 20 and 100 that are divisible by 9.
divisibleByNine : List Integer
divisibleByNine = ?fillme3

-- Using list comprehensions, construct a function that
-- turns a list of numbers into a list of strings.

||| Map odd numbers to `"bang"` and even numbers to `"boom"`.
boomBangs : List Integer -> List String
boomBangs xs = ?fillme4
  where
    transform : Integer -> String
    transform = ?fillme5

-- ------------------------------------------------------------------- [ Tests ]

testListCompZero : IO ()
testListCompZero = assert listCompZero

testMyFirstListComp : IO ()
testMyFirstListComp = assertEq [24,32,40,48,56,64,72,80]
                               (myFirstListComp [10..40])

testComputeList : IO ()
testComputeList = assert computeList

testDivisibleByNine : IO ()
testDivisibleByNine = assertEq [27,36,45,54,63,72,81,90,99] divisibleByNine

testBoomBangs : IO ()
testBoomBangs = assertEq ["bang","boom","bang","boom","bang"]
                         (boomBangs [3,4,5,6,7])

-- --------------------------------------------------------------------- [ EOF ]
