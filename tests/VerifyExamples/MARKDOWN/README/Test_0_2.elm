module VerifyExamples.MARKDOWN.README.Test_0_2 exposing (..)

-- This file got generated by [elm-verify-examples](https://github.com/stoeffel/elm-verify-examples).
-- Please don't modify this file by hand!

import Test
import Expect

import StaticArray exposing (StaticArray)
import StaticArray.Index exposing (Five,OnePlus)
import StaticArray.Length as Length exposing (Length)



array : StaticArray (OnePlus Five) Int
array =
  StaticArray.fromList six 0 [1,2,3,4,5]
six : Length (OnePlus Five)
six =
  Length.five |> Length.plus1



spec0 : Test.Test
spec0 =
    Test.test "Documentation VerifyExamples: \n\n    array\n    |> StaticArray.resize (six |> Length.minus1)\n    --> StaticArray.fromList Length.five 0 [1,2,3,4]" <|
        \() ->
            Expect.equal
                (
                array
                |> StaticArray.resize (six |> Length.minus1)
                )
                (
                StaticArray.fromList Length.five 0 [1,2,3,4]
                )