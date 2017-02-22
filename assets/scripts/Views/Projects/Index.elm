module Views.Projects.Index exposing (projectsView)

import Html exposing (..)
import Html.Attributes exposing (..)
import Types.Index exposing (..)

containerClass : String -> String
containerClass language =
  " document-container"
  ++ " card"
  ++ " medium"
  ++ " transparent"
  ++ " blue-grey-text"
  ++ " text-lighten-5"
  ++ " hoverable"
  ++ " z-depth-1 "
  ++ (String.toLower language)

homePage : String -> Html msg
homePage homepage =
  case homepage of
    "" ->
      text homepage
    _ ->
      a [ href homepage ] [ text homepage ]

reworkDevIcon : String -> String
reworkDevIcon language =
  case (String.toLower language) of
    "viml" ->
      "devicons devicons-vim align-right"
    "shell" ->
      "devicons devicons-terminal align-right"
    "html" ->
      "devicons devicons-html5 align-right"
    "" ->
      "devicons align-right"
    _ ->
      "devicons devicons-" ++ (String.toLower language) ++ " align-right"

projectView : Project -> Html msg
projectView project =
  div [ class "col s12 m12 l4" ]
      [ div [ project.language
                |> containerClass
                |> class
            ]
            [ div [ class "card-content project__content" ]
                  [ span [ class "card-title" ]
                         [ h4 []
                              [ a [ href project.url ] [ text project.name ] ]
                         ]
                  , div []
                        [ p [ class "truncate" ]
                            [ text project.description ]
                        , br [] []
                        , span []
                               [ i [ style [("padding-right", "10px")]
                                   , class "fa fa-star"
                                   ]
                                   [ text (toString project.stars) ]
                               , i [ class "fa fa-code-fork" ]
                                   [ text (toString project.forks) ]
                               , br [] []
                               , (homePage project.homepage)
                               ]
                        ]
                  ]
            , div [ class "card-action" ]
                  [ i [ class (reworkDevIcon project.language) ] []
                  , a [ href project.url ] [ text "check it out on Github" ]
                  ]
            ]
      ]

projectsRow : Projects -> Html msg
projectsRow projects =
  div [ class "row" ]
      (projects |> List.map projectView)

groupProjects : Projects -> List (List Project)
groupProjects projects =
  case List.take 3 projects of
    [] -> []
    projectGroup -> projectGroup :: groupProjects (List.drop 3 projects)

projectsViews : Projects -> List (Html msg)
projectsViews projects =
  projects
    |> groupProjects
    |> List.map projectsRow

projectsView : Projects ->  Html msg
projectsView projects =
  div []
      (projectsViews projects)
