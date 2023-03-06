module Playground exposing (main)

import Html
import Html.Attributes exposing (class)
import Regex


pattern : String
pattern =
    "\\d\\d:\\d\\d [ap]\\.m\\."


maybeRegex : Maybe Regex.Regex
maybeRegex =
    Regex.fromString pattern


regex : Regex.Regex
regex =
    Maybe.withDefault Regex.never maybeRegex


apollo11 : String
apollo11 =
    """ 
   On July 16, 1969, the massive Saturn V rocket
   lifted off from NASA's Kennedy Space Center at
   09:32 a.m. EDT. Four days later, on July 20, Neil
   Armstrong and Buzz Aldrin landed on the Moon.
"""


stringFromBool : Bool -> String
stringFromBool bool =
    if bool then
        "true"

    else
        "false"


main : Html.Html msg
main =
    Html.h1
        [ class "h1" ]
        [ Html.text <| stringFromBool (Regex.contains regex apollo11) ]
