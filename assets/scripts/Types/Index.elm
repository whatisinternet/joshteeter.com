module Types.Index exposing (..)

type Route
     = IndexRoute
     | ProjectsRoute
     | AboutRoute
     | ContactRoute

type alias Model =
  { projects: Projects
  , route: Route
  }

type alias Project =
  { language: String
  , url: String
  , name: String
  , description: String
  , forks: Int
  , stars: Int
  , homepage: String
  }

type alias Projects =
  List Project
