-- ------------------------------------------------------------- [ Boolean.idr ]
-- Module  : Koans.Boolean
--
-- License : This code is distributed under the BSD 3-Clause License
--           See the file LICENSE in the root directory for its full text.
-- --------------------------------------------------------------------- [ EOH ]

-- | Exercises on Boolean Relations.
module Koans.Boolean

-- ------------------------------------------------------------------- [ Koans ]

logicalAND : Bool
logicalAND = True && ?fillme1 == True

logicalOR : Bool
logicalOR = False || ?fillme2 == False

logicalNOT : Bool
logicalNOT = not ?fillme3 == False

logicalPredicate : Bool
logicalPredicate = not ( ?fillme4 && True) || (?fillme5 && False) == True

-- --------------------------------------------------------------------- [ EOF ]
