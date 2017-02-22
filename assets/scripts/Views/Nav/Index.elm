module Views.Nav.Index exposing (navView)

import Html exposing (..)
import Html.Attributes exposing (..)

routes : List String
routes =
  [ "Main"
  , "Projects"
  , "About"
  , "Contact"
  ]

h4Attrs : String -> String -> List (String, String)
h4Attrs route currentPage =
  if (String.toLower route) == currentPage then
    [("color", "#E7CC68")]
  else
    [("", "")]

childElement : String -> String -> List (Html msg)
childElement route currentPage  =
  if (String.toLower route) == currentPage then
    [ route
       |> text
    ]
  else
    [ a [ "#" ++ route
            |> String.toLower
            |> href
        ]
        [ route
            |> text
        ]
    ]

navItem : String -> String -> Html msg
navItem currentPage route =
  h4 [ class "navigation"
     , style (h4Attrs route currentPage)
     ]
     (childElement route currentPage)

navView : String -> Html msg
navView currentPage =
  div [ ]
      (List.map (navItem currentPage) routes )
