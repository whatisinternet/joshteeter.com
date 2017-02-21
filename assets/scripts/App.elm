module App exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)

import Views.Main.Index exposing (indexView)
import Views.Contact.Index exposing (contactView)
import Views.About.Index exposing (aboutView)


-- View
view number =
  aboutView
  -- contactView
  -- indexView

-- Main
main =
      beginnerProgram
      { model = 0
      , update = update
      , view = view
      }

type Msg = Noop

update msg model =
  case msg of
    Noop ->
      model
