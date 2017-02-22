module App exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)

import Views.Main.Index exposing (indexView)
import Views.Contact.Index exposing (contactView)
import Views.About.Index exposing (aboutView)
import Views.Nav.Index exposing (navView)
import Views.Projects.Index exposing (projectsView)

import Types.Index exposing (Model, Project, Projects)

-- Update
type Msg
     = Noop
     | Test

update : Msg -> Model -> Model
update msg model =
  case msg of
    Noop ->
      model
    Test ->
      model

-- Model
initialModel : Model
initialModel =
    { projects = generateProjects }

-- View
view : Model -> Html msg
view model =
  div []
      [ navView "projects"
      -- , aboutView
      -- , contactView
      -- , indexView
      , projectsView model.projects
      ]

-- Main
main =
      beginnerProgram
      { model = initialModel
      , update = update
      , view = view
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
