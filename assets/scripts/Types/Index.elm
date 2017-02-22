module Types.Index exposing (Project, Projects)

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

