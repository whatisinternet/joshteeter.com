{div, h1, h4, a}  = React.DOM

module.exports = React.createFactory React.createClass
  displayName: "Navigation"

  propTypes:
    currentPage: React.PropTypes.string

  render: ->
    {currentPage} = @props
    routes = require('../../../config/routes')
    routeTitles = _.values routes

    bem = new Bemmer(block: 'navigation')

    div {},
      _.map routeTitles, (r, idx) ->
        if _.startCase(r) == currentPage
          classes = "blue-text text-lighten-1"
          h4
            key: idx
            className: bem.with(classNames: classes),
              _.startCase  r
        else
          h4
            key: idx
            className: bem.with(classNames: classes),
              a
                href: "#{_.keys(routes)[idx]}",
                _.startCase  r
