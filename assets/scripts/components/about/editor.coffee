{div, h2, p, span, i, a}  = React.DOM

module.exports = React.createFactory React.createClass
  displayName: "about:editor"

  render: ->

    bem = new Bemmer(block: 'about')

    div {},
      p {},
        'This is my editor of choice:'
      span style: {display: 'flex'},
        h2 {},
          a href: "https://en.wikipedia.org/wiki/Vim_(text_editor)",
            i
              className: 'devicons devicons-vim',
