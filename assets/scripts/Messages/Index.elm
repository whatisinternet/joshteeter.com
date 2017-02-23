module Messages.Index exposing (..)

import Navigation
import Http
import Types.Index exposing (Project)

type Msg
     = OnLocationChange Navigation.Location
     | FetchRepos
     | UpdateRepos (Result Http.Error (List Project))
