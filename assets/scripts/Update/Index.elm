module Update.Index exposing (..)

import Router.Index exposing (parseLocation)
import Messages.Index exposing (..)

update msg model =
  case msg of
    Messages.Index.OnLocationChange location ->
      let
          newRoute =
            location
              |> parseLocation
      in
         ( { model | route = newRoute }, Cmd.none )
