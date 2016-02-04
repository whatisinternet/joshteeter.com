App = require('../app.coffee')

ReactRedux = require('react-redux')
connect = ReactRedux.connect

mapStateToProps = (state) ->
  githubInfo: state

mapDispatchToProps = (dispatch) ->
  getProjects: ->
    dispatch()

module.exports = connect(mapStateToProps, mapDispatchToProps)(App)
