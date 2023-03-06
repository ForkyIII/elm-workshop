module Playground exposing (main)

import Html
import Html.Attributes exposing (class)
import Regex


pattern : String
pattern =
    "quitter"


maybeRegex : Maybe Regex.Regex
maybeRegex =
    Regex.fromString pattern


regex : Regex.Regex
regex =
    Maybe.withDefault Regex.never maybeRegex


apollo11 : String
apollo11 =
    """ 
    I'm a great quitter. It's one of the few things 
    I do well. I come from a long line of quitters. 
    My father was a quitter, my grandfather was a 
    quitter... I was raised to give up. 
    """


stringFromList : List Int -> String
stringFromList lista =
    List.map (\int -> String.fromInt int) lista
    |> String.join ","


main : Html.Html msg
main =
    Html.h1
        [ class "h1" ]
        [ Html.text <| stringFromList <| List.map (\time -> time.number) (Regex.find regex apollo11) ]
