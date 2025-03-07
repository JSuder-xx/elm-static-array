module VerifyExamples.MARKDOWN.README.Test_0_1 exposing (..)

-- This file got generated by [elm-verify-examples](https://github.com/stoeffel/elm-verify-examples).
-- Please don't modify this file by hand!

import Test
import Expect

import Array
import StaticArray
import StaticArray.Index exposing (OnePlus,Five,Ten,TwoPlus)
import StaticArray.Length as Length exposing (Length)



array2 : { head : Int, length : Length (OnePlus Five), tail : Array.Array Int }
array2 =
  StaticArray.fromList six 0 [1,2,3,4,5]
  |> StaticArray.toRecord
array1 : { head : Int, length : Length (OnePlus Five), tail : Array.Array Int }
array1 =
  StaticArray.fromList six 0 [1,2,3,4,5]
  |> StaticArray.toRecord
twelve : Length (TwoPlus Ten)
twelve =
  Length.ten |> Length.plus2
six : Length (OnePlus Five)
six =
  Length.five |> Length.plus1



spec0 : Test.Test
spec0 =
    Test.test "Documentation VerifyExamples: \n\n    StaticArray.fromRecord\n      { length = twelve\n      , head = array1.head\n      , tail = Array.append (array1.tail |> Array.push array2.head) array2.tail\n      }\n    |> StaticArray.toList\n    --> [0,1,2,3,4,5,0,1,2,3,4,5]" <|
        \() ->
            Expect.equal
                (
                StaticArray.fromRecord
                  { length = twelve
                  , head = array1.head
                  , tail = Array.append (array1.tail |> Array.push array2.head) array2.tail
                  }
                |> StaticArray.toList
                )
                (
                [0,1,2,3,4,5,0,1,2,3,4,5]
                )