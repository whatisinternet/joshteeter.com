App = require('../app.coffee')

{connect}= require('preact-redux')

mapStateToProps = (state) ->
  githubInfo: state

mapDispatchToProps = (dispatch) ->
  getProjects: ->
    dispatch()

module.exports = connect(mapStateToProps, mapDispatchToProps)(App)
