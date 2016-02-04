REPO_ENDPOINT = "https://api.github.com/users/whatisinternet/repos"

GitHubModel = require('../models/github')

mapRepoDetailsToReposArray = (data) ->
  _.map JSON.parse(data), (repo) -> new GitHubModel(repo)

module.exports =
  (store) ->
    (next) ->
      (action) ->
        superagent
          .get("#{REPO_ENDPOINT}")
          .end((err, res) =>
            next(
              type: 'GET_REPOS',
              repos: mapRepoDetailsToReposArray(res.text)
            ))
