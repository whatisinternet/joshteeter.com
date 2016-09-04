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
                        br {}
                        if project.homepage? != ""
                          a href: project.homepage,
                            project.homepage
                  div
                    className: 'card-action',
                    if project.language?.toLowerCase() == "viml"
                      i className: "devicons devicons-vim align-right"
                    else if project.language?.toLowerCase() == "shell"
                      i className: "devicons devicons-terminal align-right"
                    else if project.language?.toLowerCase() == "html"
                      i className: "devicons devicons-html5 align-right"
                    else
                      i className: "devicons devicons-#{project.language?.toLowerCase()} align-right"
                    a
                      href: project.url,
                        " check it out on Github"

            if (idx + 1)  % 3 == 0
              div
                key: idx
                className: 'row',
