module Views.About.Index exposing (aboutView)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)

import MD5

-- helpers
gravatarUrl : String -> String
gravatarUrl email =
  "http://www.gravatar.com/avatar/" ++ MD5.hex email ++ "?s=200"


-- views
editorView : Html msg
editorView =
  div []
      [ p [] [ text "This is my editor of choice" ]
      , span [ style [("display", "flex")] ]
             [ h2 []
                  [ a [ href "https://en.wikipedia.org/wiki/Vim_(text_editor)" ]
                      [ i [ class "devicons devicons-vim" ] []]
                  ]
             ]
      ]

frameworksView : Html msg
frameworksView =
  div []
      [ p [] [ text "These frameworks" ]
      , span [ style [("display", "flex")] ]
             [ h2 []
                  [ a [ href "https://facebook.github.io/react" ]
                      [ i [ class "devicons devicons-react" ] []]
                  ]
             ,  h2 []
                  [ a [ href "http://rubyonrails.org" ]
                      [ i [ class "devicons devicons-ruby_on_rails" ] []]
                  ]
             ]
      ]

languagesView : Html msg
languagesView =
  div []
      [ p [] [ text "I like to work with these languages:" ]
      , span [ style [("display", "flex")] ]
             [ h2 []
                  [ a [ href "https://www.ruby-lang.org" ]
                      [ i [ class "devicons devicons-ruby" ] []]
                  ]
             ,  h2 []
                  [ a [ href "https://rust-lang.org" ]
                      [ i [ class "devicons devicons-rust" ] []]
                  ]
             ,  h2 []
                  [ a [ href "https://elm-lang.org"  ]
                      [ i [ class "devicons devicons-elm" ] []]
                  ]
             ,  h2 []
                  [ a [ href "https://www.typescriptlang.org/"  ]
                      [ i [ class "devicons devicon-javascript" ] []]
                  ]
             ,  h2 []
                  [ a [ href "https://sass-lang.com"  ]
                      [ i [ class "devicons devicons-sass" ] []]
                  ]
             ,  h2 []
                  [ a [ href "https://www.postgresql.org"  ]
                      [ i [ class "devicons devicons-postgresql" ] []]
                  ]
             ]
      ]

technologiesView : Html msg
technologiesView =
  div []
      [ p [] [ text "And this stuff" ]
      , span [ style [("display", "flex")] ]
             [ h2 []
                  [ a [ href "https://opensource.org/" ]
                      [ i [ class "devicons devicons-opensource" ] []]
                  ]
             ,  h2 []
                  [ a [ href "https://git-scm.com" ]
                      [ i [ class "devicons devicons-git" ] []]
                  ]
             ,  h2 []
                  [ a [ href "https://travis-ci.org"  ]
                      [ i [ class "devicons devicons-travis" ] []]
                  ]
             ,  h2 []
                  [ a [ href "https://trello.com/joshuateeter/recommend"  ]
                      [ i [ class "devicons devicons-trello" ] []]
                  ]
             ,  h2 []
                  [ a [ href "https://github.com"  ]
                      [ i [ class "devicons devicons-github_badge" ] []]
                  ]
             ,  h2 []
                  [ a [ href "#"  ]
                      [ i [ class "devicons devicons-linux" ] []]
                  ]
             ,  h2 []
                  [ a [ href "#"  ]
                      [ i [ class "devicons devicons-apple" ] []]
                  ]
             ]
      ]

mainView : Html msg
mainView =
  div []
      [ h1 [] [ text "Hey, I'm Josh." ]
      , text "I am a software developer and a computer science student."
      , text "I like to watch Formula One and Bundesliga Soccer. In my spare time I listen to podcasts, mountain bike and write open source software. I'm passionate about learning, software, computer related issues, computer ethics, and mental health."

      ]

userImage : Html msg
userImage =
  img [ class "circle responsive-img", src (gravatarUrl "joshteeter@gmail.com")] []

aboutView : Html msg
aboutView =
  div [ style [("border", "none")]
      , class "contact document-container card-panel transparent blue-grey-text text-lighten-5 hoverable"
      ]
      [
        div [ class "row" ]
            [ div [ class "col s12 l4 center-align" ]
                  [ userImage ]
            , div [ class "col s12 l8" ]
                  [ mainView
                  , editorView
                  , languagesView
                  , frameworksView
                  , technologiesView
                  ]
            ]
      ]
