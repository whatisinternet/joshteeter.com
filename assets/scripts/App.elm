module App exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)

import Views.Index exposing (view)
import Messages.Index exposing (..)
import Types.Index exposing (Model, Project, Projects, Route)
import Update.Index exposing (update)
import Navigation exposing (Location)
import Router.Index

-- Model
initialModel : Location -> (Model, Cmd Msg)
initialModel location =
  let
      currentRoute =
        Router.Index.parseLocation location
  in
    ({ projects = generateProjects
    , route = currentRoute
    }, Cmd.none)

-- Subscriptions
subscriptions : Model -> Sub Msg
subscriptions model =
  Sub.none

-- Main
main =
  Navigation.program Messages.Index.OnLocationChange
      { init = initialModel
      , update = update
      , view = view
      , subscriptions = subscriptions
      }


-- Misc -- Remove this
generateProjects : Projects
generateProjects =
  [ (Project "elm" "https://elm-lang.org" "elm" "elm" 1 2 "")
  , (Project "elm" "https://elm-lang.org" "elm" "elm" 1 2 "https://elm-lang.org")
  , (Project "elm" "https://elm-lang.org" "elm" "elm" 1 2 "https://elm-lang.org")
  , (Project "elm" "https://elm-lang.org" "elm" "elm" 1 2 "https://elm-lang.org")
  , (Project "elm" "https://elm-lang.org" "elm" "elm" 1 2 "https://elm-lang.org")
  , (Project "elm" "https://elm-lang.org" "elm" "elm" 1 2 "https://elm-lang.org")
  , (Project "elm" "https://elm-lang.org" "elm" "elm" 1 2 "https://elm-lang.org")
  , (Project "elm" "https://elm-lang.org" "elm" "elm" 1 2 "https://elm-lang.org")
  ]
