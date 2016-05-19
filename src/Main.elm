module Main where

import Html
import Nav
import Content
import Footer
import StartApp.Simple exposing (start)
import Chat

main =
  start { model = Messages.init, view = Messages.view, update = Messages.update }
