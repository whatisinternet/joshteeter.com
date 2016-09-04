{div, h1, h4, a}  = React.DOM

module.exports = React.createFactory React.createClass
  displayName: "Navigation"

  propTypes:
    currentPage: React.PropTypes.string

  render: ->
    {currentPage} = @props
    routes = require('../../../../config/routes')
    routeTitles = _.values routes
    classes = ""

    bem = new Bemmer(block: 'navigation')

    div {},
      _.map routeTitles, (r, idx) ->
        if _.startCase(r) == currentPage
          h4
            key: idx
            className: bem.with(classNames: classes)
            style: { color: "#E7CC68"},
              _.startCase  r
        else
          h4
            key: idx
            className: bem.with(classNames: classes),
              a
                href: "#{_.keys(routes)[idx]}",
                _.startCase  r
