module Views.Contact.Index exposing (contactView)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)


contactView: Html msg
contactView =
  div [ style [("border", "none")]
      , class "contact document-container card-panel transparent blue-grey-text text-lighten-5 hoverable"
      ]
      [ h1 [class "contact__notification"]
           [ a [ href "mailto:joshteeter+website@gmail.com" ]
               [ i [class "fa fa-envelope white-text"] []
               ]
           ]
      , h1 [class "contact__notification"]
           [ a [ href "https://github.com/whatisinternet" ]
               [ i [class "fa fa-github blue-text"] []
               ]
           ]
      , h1 [class "contact__notification"]
           [ a [ href "https://ca.linkedin.com/in/joshteeter" ]
               [ i [class "fa fa-linkedin blue-text text-darken-2"] []
               ]
           ]
      , h1 [class "contact__notification"]
           [ a [ href "https://twitter.com/whatisinternet" ]
               [ i [class "fa fa-twitter light-blue-text text-lighten-2"] []
               ]
           ]
      , h1 [class "contact__notification"]
           [ a [ href "http://stackoverflow.com/users/2510144/whatisinternet" ]
               [ i [class "fa fa-stack-exchange blue-text text-lighten-2"] []
               ]
           ]
      ]
