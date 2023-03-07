module Playground exposing (main)

import Html
-- import Html.Attributes exposing (class)


descending2 : comparable -> comparable -> Order
descending2 a b =
    case compare a b of
        LT ->
            GT

        GT ->
            LT

        EQ ->
            EQ


main : Html.Html msg
main =
    [ 316, 320, 312, 370, 337, 318, 314 ]
        |> List.sortWith descending2
        |> Debug.toString
        |> Html.text
