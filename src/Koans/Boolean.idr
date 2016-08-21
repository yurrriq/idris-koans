-- ------------------------------------------------------------- [ Boolean.idr ]
-- Module  : Koans.Boolean
--
-- License : This code is distributed under the BSD 3-Clause License
--           See the file LICENSE in the root directory for its full text.
-- --------------------------------------------------------------------- [ EOH ]

||| Exercises on boolean relations.
module Koans.Boolean

import Koans.Test

%access export

-- ------------------------------------------------------------------- [ Koans ]

logicalAND : Bool
logicalAND = True && ?fillme1 == True

logicalOR : Bool
logicalOR = False || ?fillme2 == False

logicalNOT : Bool
logicalNOT = not ?fillme3 == False

logicalPredicate : Bool
logicalPredicate = not ( ?fillme4 && True) || (?fillme5 && False) == True

-- ------------------------------------------------------------------- [ Tests ]

testLogicalAND : IO ()
testLogicalAND = assert logicalAND

testLogicalOR : IO ()
testLogicalOR = assert logicalOR

testLogicalNOT : IO ()
testLogicalNOT = assert logicalNOT

testLogicalPredicate : IO ()
testLogicalPredicate = assert logicalPredicate

-- --------------------------------------------------------------------- [ EOF ]
