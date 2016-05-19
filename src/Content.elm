module Content (..) where

import Html exposing (..)
import Html.Attributes exposing (class, href)

view : Html
view =
  div [class "container-fluid text-center"] [
    div [class "row content"] [
      div [class "col-sm-2 sidenav"] [
        p [href "#"] [
          text "Link"
        ]
      ],
      div [class "col-sm-8 text-left"] [
        h1 [] [text "Welcome"],
        p [] [text "Text"],
        hr [] [],
        h3 [] [text "Test"]
      ],
      div [class "col-sm-2 sidenav"] [
        div [class "well"] [
         p [] [text "ADS"]
        ],
        div [class "well"] [
          p [] [text "ADS"]
        ]
      ]
    ]
  ]