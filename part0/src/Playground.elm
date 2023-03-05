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

weekday dayInNumber =
    if dayInNumber == 0 then
        "Sunday"

    else if dayInNumber == 1 then
        "Monday"

    else if dayInNumber == 2 then
        "Tuesday"

    else if dayInNumber == 3 then
        "Wednesday"

    else if dayInNumber == 4 then
        "Thursday"

    else if dayInNumber == 5 then
        "Friday"

    else if dayInNumber == 6 then
        "Saturday"

    else
        "Unknown day"

main =
    Html.h1
        [ class "h1" ]
        [ Html.text <| weekday 0]
