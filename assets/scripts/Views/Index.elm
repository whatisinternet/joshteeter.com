module Views.Index exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Types.Index exposing (Model, Projects, Route)
import Messages.Index exposing (Msg)

import Views.Main.Index exposing (indexView)
import Views.Contact.Index exposing (contactView)
import Views.About.Index exposing (aboutView)
import Views.Nav.Index exposing (navView)
import Views.Projects.Index exposing (projectsView)

view : Model -> Html Msg
view model =
  div []
      [ page model ]

page : Model -> Html Msg
page model =
  case model.route of
    Types.Index.IndexRoute ->
      indexView
    Types.Index.ProjectsRoute ->
      div [ class "container" ]
          [ navView "projects"
          , projectsView model.projects
          ]
    Types.Index.AboutRoute ->
      div [ class "container" ]
          [ navView "about"
          , aboutView
          ]
    Types.Index.ContactRoute ->
      div [ class "container" ]
          [ navView "contact"
          , contactView
          ]
