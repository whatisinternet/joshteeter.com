module App exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)

import Views.Index exposing (view)
import Messages.Index exposing (..)
import Messages.Index
import Types.Index exposing (Model, Project, Projects, Route)
import Update.Index exposing (update, fetchRepos)
import Navigation exposing (Location)
import Router.Index

-- Model
init : Location -> (Model, Cmd Msg)
init location =
  let
      currentRoute =
        Router.Index.parseLocation location
      model =
        { route = currentRoute, projects = [] }
  in
     model ! [ fetchRepos ]

-- Subscriptions
subscriptions : Model -> Sub Msg
subscriptions model =
  Sub.none

-- Main
main =
  Navigation.program Messages.Index.OnLocationChange
      { init = init
      , update = update
      , view = view
      , subscriptions = subscriptions
      }
