module Views.Main.Index exposing (indexView)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)


indexView: Html msg
indexView =
  div [ class "main__centered-body"]
      [ span [ style [ ("display", "flex")]]
             [ h3 [ class "main__text white-text" ]
                  [ text "Josh Teeter" ]]
      , div [ class "main__nav row" ]
            [ div [ class "main__link right-align"]
                  [ h5 []
                       [ a [ href "/projects" ]
                           [ text "My projects" ]
                       ]
                  ]
            ,  div [ class "main__link right-align"]
                  [ h5 []
                       [ a [ href "/about" ]
                           [ text "About me" ]
                       ]
                  ]
            ,  div [ class "main__link right-align"]
                  [ h5 []
                       [ a [ href "/contact" ]
                           [ text "Contact Me" ]
                       ]
                  ]
            ]
      ]
