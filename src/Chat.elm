module Chat (..) where

import Html exposing (div, Html, text, img)
import Html.Attributes exposing (class, id, src)
import Date exposing (Date)

type alias Message =
  { text : String
  , owner : String
  , avatar : String
  , date : Date
  }

type alias Model =
  List Message

type Action
  = NoOp
  | AddMessage Message

messageView : Message -> Html
messageView message =
  div
    [ class "row" ]
    [ div
        [ class "col-lg-12" ]
        [ div
            [ class "media" ]
            [ a
              [ class "pull-left" ]
              [ img
                  [ class "media-object img-circle"
                  , src "http://lorempixel.com/30/30/people/1/"
                  ] []
              ]
            ,
            ]
        ]
    ,
    ]

view : Signal.Address Action -> Model -> Html
view address model =
  div
    [ class "panel-collapse collapse in"
    , id "chat"
    ]
    [ div []
      [ div
        [ class "portlet-body chat-widget"
        , style
          [ ("overflow-y", "auto")
          , ("width", "auto")
          , ("height", "300px")
          ]
        ]
      ]
    ]

update : Action -> Model -> Model
update action model =
  case action of
    AddMessage message ->
      message :: model
    NoOp ->
      model

init : Model
init =
  ["Message1", "Message2"]

