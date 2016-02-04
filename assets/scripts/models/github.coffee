module.exports = class GitHub

  constructor: (repo) ->
    @name = repo.name
    @url = repo.html_url
    @description = repo.description
    @language = repo.language
    @stars = repo.stargazers_count
    @forks = repo.forks
    @homepage = repo.homepage
    @updatedAt = repo.updated_at
