-- ---------------------------------------------------------------- [ Misc.idr ]
-- Module  : Koans.Misc
--
-- License : This code is distributed under the BSD 3-Clause License
--           See the file LICENSE in the root directory for its full text.
-- --------------------------------------------------------------------- [ EOH ]

||| Miscellaneous examples.
module Koans.Misc

%access export

||| The list of integers from 1 to 20 that are odd.
smallOdds : List Integer
smallOdds = [ x | x <- [1..20], mod x 2 == 1 ]

||| Say hello to `whom`.
||| @ whom The name of someone to whom to say hello.
greeter : (whom : String) -> String
greeter whom = "Hello to " ++ whom

-- --------------------------------------------------------------------- [ EOF ]
