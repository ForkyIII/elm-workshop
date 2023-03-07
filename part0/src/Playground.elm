module Playground exposing (main)

import Html
-- import Html.Attributes exposing (class)

guardians : List String
guardians = [ "Star-lord", "Groot", "Gamora", "Drax", "Rocket" ]

-- List.foldl (\x a -> (String.length x) + a) 0 guardians


main : Html.Html msg
main =
    guardians
        |> List.map String.length
        |> List.sum
        |> Debug.toString
        |> Html.text
