fetchGithub = require('../middleware/ajax')
{createStore, applyMiddleware} = require('redux')

githubStore = (state = {repos: []}, action) ->
  switch action.type
    when 'GET_REPOS'
      _.extend state['repos'], action.repos
    else
      return state

createStoreWithMiddleware = applyMiddleware(fetchGithub)(createStore)
module.exports = store: createStoreWithMiddleware(githubStore)
