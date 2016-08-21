-- ---------------------------------------------------------------- [ Misc.idr ]
-- Module  : Koans.Misc
--
-- License : This code is distributed under the BSD 3-Clause License
--           See the file LICENSE in the root directory for its full text.
-- --------------------------------------------------------------------- [ EOH ]

module Koans.Misc

smallOdds : List Integer
smallOdds = [x | x <- [1..20], Builtins.mod x 2 == 0 ]

greeter : String -> String
greeter whom = "Hello to " ++ whom

-- --------------------------------------------------------------------- [ EOF ]
