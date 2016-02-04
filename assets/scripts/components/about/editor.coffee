{div, h2, p, span, i}  = React.DOM

module.exports = React.createFactory React.createClass
  displayName: "about:editor"

  render: ->

    bem = new Bemmer(block: 'about')

    div {},
      p {},
        'This is my editor of choice:'
      span style: {display: 'inline-block'},
        h2 style: {display: 'inline-block'},
          i
            className: 'devicon-vim-plain',
