module Playground exposing (main)

import Html
import Html.Attributes exposing (class)



{--


add a b =
    a + b


multiply c d =
    c * d


divide e f =
    e / f
--}
{--
getGPA : Float -> Float
getGPA marks =
    if marks >= 90 then
        4

    else if marks >= 80 then
        3.5

    else if marks >= 70 then
        3

    else if marks >= 60 then
        2.5

    else if marks >= 50 then
        2

    else if marks >= 40 then
        1.5

    else if marks >= 30 then
        1

    else if marks >= 20 then
        0.5

    else
        0


mapGPA : Float -> String
mapGPA gpa =
    if gpa == 4 then
        "A"

    else if gpa == 3.5 then
        "A-"

    else if gpa == 3 then
        "B"

    else if gpa == 2.5 then
        "B-"

    else if gpa == 2 then
        "C"

    else if gpa == 1.5 then
        "C-"

    else if gpa == 1 then
        "D"

    else if gpa == 0.5 then
        "D-"

    else
        "F"


displayDegree : String -> String
displayDegree marks =
    "Your GPA is " ++ marks
--}


weekday : Int -> String
weekday dayInNumber =
    case dayInNumber of
        0 ->
            "Sunday"

        1 ->
            "Monday"

        2 ->
            "Tuesday"

        3 ->
            "Wednesday"

        4 ->
            "Thursday"

        5 ->
            "Friday"

        6 ->
            "Saturday"

        _ ->
            "Invalid day"


main : Html.Html msg
main =
    Html.h1
        [ class "h1" ]
        [ Html.text <| weekday 1 ]
