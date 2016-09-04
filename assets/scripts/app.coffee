{div}  = React.DOM

{RouterMixin} = require('react-mini-router')

Nav = require('./components/nav/index')

{navigate} = require('react-mini-router')

module.exports = React.createFactory React.createClass
  displayName: "App"

  mixins: [RouterMixin]

  routes: require('../../config/routes')

  getSelectedPageFromState: (path) ->
    _.startCase require('../../config/routes')[path]

  render: ->
    if @state.path == "/"
      div {},
        @renderCurrentRoute()
    else
      div className: 'container',
        Nav
          currentPage: @getSelectedPageFromState(@state.path),
        @renderCurrentRoute()

  main: ->
    require('./components/main/index') {}

  projects: ->
    require('./components/projects/index')
      getProjects: @props.getProjects
      gitHubInfo: @props.githubInfo

  about: ->
    require('./components/about/index') {}

  contact: ->
    require('./components/contact/index') {}

