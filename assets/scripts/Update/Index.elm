module Update.Index exposing (..)

import Router.Index exposing (parseLocation)
import Messages.Index exposing (..)
import Json.Decode as Decode exposing (Decoder, list, int, string)
import Json.Decode.Pipeline exposing (decode, required, optional, hardcoded)
import Types.Index exposing (Projects, Project)
import Http

fetchRepos: Cmd Msg
fetchRepos =
  let
      url =
        "https://api.github.com/users/whatisinternet/repos?owner=true&sort=updated"
  in
     Http.send Messages.Index.UpdateRepos (Http.get url decodeProjects)


decodeProjects : Decoder (List Project)
decodeProjects =
  list decodeProject

decodeProject : Decoder Project
decodeProject =
  decode Project
    |> optional "language" string ""
    |> optional "html_url" string ""
    |> optional "name" string ""
    |> optional "description" string ""
    |> optional "forks" int 0
    |> optional "stargazers_count" int 0
    |> optional "homepage" string ""


update msg model =
  case msg of
    Messages.Index.OnLocationChange location ->
      let
          newRoute =
            location
              |> parseLocation
      in
         ( { model | route = newRoute }, Cmd.none )

    Messages.Index.FetchRepos ->
      ( model, fetchRepos )

    Messages.Index.UpdateRepos (Ok projects) ->
      ( { model | projects = projects }, Cmd.none )

    Messages.Index.UpdateRepos (Err error) ->
      ( model, Cmd.none )
