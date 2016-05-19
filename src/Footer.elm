module Footer (..) where

import Html exposing (Html, p, footer, text)
import Html.Attributes exposing (class, href)

view : Html
view =
  footer [class "container-fluid text-center"] [
    p [] [text "Footer text"]
  ]