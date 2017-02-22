module Types.Index exposing (Model, Project, Projects)

type alias Model =
  { projects: Projects }

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
