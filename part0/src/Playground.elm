module Playground exposing (main)

import Html
import Regex


validate : String -> ( String, String )
validate email =
    let
        pattern : String
        pattern =
            "^([a-zA-Z0-9_\\-\\.]+)@([a-zA-Z0-9_\\-\\.]+)\\.([a-zA-Z]{2,5})$"

        maybeRegex : Maybe Regex.Regex
        maybeRegex =
            Regex.fromString pattern

        regex : Regex.Regex
        regex =
            Maybe.withDefault Regex.never maybeRegex

        isValid : Bool
        isValid =
            Regex.contains regex email
    in
    if isValid then
        ( "Valid email", "green" )

    else
        ( "Invalid email", "red" )


main : Html.Html msg
main =
    validate "omar@nurserym"
        |> Debug.toString
        |> Html.text
