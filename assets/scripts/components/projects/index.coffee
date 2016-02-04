{h1, h4, a, i, div, span, p, br}  = React.DOM


module.exports = React.createFactory React.createClass
  displayName: "projects"

  # https://facebook.github.io/react/docs/reusable-components.html
  propTypes:
    getProjects: React.PropTypes.func
    githubInfo: React.PropTypes.object

  render: ->
    {gitHubInfo} = @props

    projects = _.sortBy(gitHubInfo, 'updatedAt').reverse()

    div
      className: 'row',
      _.map projects, (project, idx) ->
        div key: idx,
          div
            className: 'col s12 m12 l4',
              div
                className: "document-container card medium transparent #{project.language?.toLowerCase()} blue-grey-text text-lighten-5 hoverable z-depth-1",
                  div
                    className: 'card-content project__content',
                    span
                      className: 'card-title',
                      h4 {},
                        a
                          href: project.url,
                            _.startCase project.name

                    div {},
                      p className: 'truncate',
                        project.description
                      br {}
                      span {},
                        i
                          style: {paddingRight: '10px'}
                          className:'fa fa-star',
                          "#{project.stars}  "
                        i className:'fa fa-code-fork',
                          project.forks
                  div
                    className: 'card-action',
                    i className: "devicon-#{project.language?.toLowerCase()}-plain align-right"
                    a
                      href: project.url,
                        " check it out on Github"

            if (idx + 1)  % 3 == 0
              div
                key: idx
                className: 'row',
