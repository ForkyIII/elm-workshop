module Playground exposing (main)

import Html
import Html.Attributes exposing (class)


stringFromBool : Bool -> String
stringFromBool bool =
    if bool then
        "true"

    else
        "false"


palindromeize : String -> String
palindromeize word =
    String.split " " word
        |> String.join ""
        |> String.filter (\char -> char /= ',')
        |> String.toLower


palindrome : String -> Bool
palindrome word =
    palindromeize word == (palindromeize word |> String.reverse)


main : Html.Html msg
main =
    Html.h1
        [ class "h1" ]
        [ Html.text <| stringFromBool (palindrome "As I pee, sir, I see Pisa") ]
        -- [ Html.text <| (palindromeize "As I pee, sir, I see Pisa") ]
        -- [ Html.text
        --     (String.split " " "As I pee, sir, I see Pisa"
        --         |> String.join ""
        --         |> String.filter isntComma
        --         |> String.toLower
        --     )
        -- ]
