module Tests exposing (suite)

import Char.Extra
import Expect exposing (Expectation)
import Test exposing (..)


suite : Test
suite =
    describe "The Char.Extra module"
        [ describe "isControl"
            [ test "Tab" <|
                \_ ->
                    Char.Extra.isControl '\t'
                        |> Expect.true "Tab is a control character"
            , test "a" <|
                \_ ->
                    Char.Extra.isControl 'a'
                        |> Expect.false "'a' is not a control character"
            ]
        , describe "isSpace"
            [ test "Tab" <|
                \_ ->
                    Char.Extra.isSpace '\t'
                        |> Expect.true "Tab is a whitespace character"
            , test "a" <|
                \_ ->
                    Char.Extra.isSpace 'a'
                        |> Expect.false "'a' is not a control character"
            , test "Space" <|
                \_ ->
                    Char.Extra.isSpace ' '
                        |> Expect.true "Space is a whitespace character"
            ]
        ]
