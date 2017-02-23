module Router.Index exposing (..)

import Navigation
import Types.Index exposing(Route(..))
import UrlParser exposing (..)

matchers : Parser (Route -> a) a
matchers =
  oneOf
      [ map IndexRoute top
      , map ProjectsRoute (s "projects")
      , map AboutRoute (s "about")
      , map ContactRoute (s "contact")
      ]

parseLocation : Navigation.Location -> Route
parseLocation location =
  case (parseHash matchers location) of
    Just route ->
      route

    Nothing ->
      IndexRoute
