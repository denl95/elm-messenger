module Nav (..) where

import Html exposing (Html, nav, div, a, text)
import Html.Attributes exposing (class, href)

view : Html
view =
  nav [class "navbar navbar-default"] [
    div [class "container-fluid"] [
      div [class "navbar-header"] [
        a [class "navbar-brand", href "#"] [text "Brand"]
      ]
    ]
  ]
