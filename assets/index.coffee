require 'materialize-css/dist/css/materialize.css'
require './styles/index'
require 'devicons'
require 'materialize-css/dist/js/materialize.min.js'

ReactRedux = require('react-redux')
Provider = ReactRedux.Provider

{store} = require('./scripts/reducers/github')

Container = require("./scripts/containers/index.coffee")

document.addEventListener "DOMContentLoaded", (e) ->
  ReactDOM.render(
    React.createElement(Provider, {store: store},
      React.createElement(Container, {history: false})
    )
    document.getElementById('appEntry')
  )

store.dispatch('GET_REPOS')
