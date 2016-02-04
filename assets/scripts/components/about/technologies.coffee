{div, img, h1, h2,  p, span, i}  = React.DOM

module.exports = React.createFactory React.createClass
  displayName: "about:technologies"

  render: ->

    bem = new Bemmer(block: 'about')

    div {},
      p {},
        'And these technologies:'
      span style: {display: 'inline-block'},
        h2 style: {display: 'inline-block'},
          i
            className: 'devicon-html5-plain',
        h2 style: {display: 'inline-block'},
          i
            className: 'devicon-nodejs-plain',
        h2 style: {display: 'inline-block'},
          i
            className: 'devicon-trello-plain',
        h2 style: {display: 'inline-block'},
          i
            className: 'devicon-git-plain',
        h2 style: {display: 'inline-block'},
          i
            className: 'devicon-github-plain',
        h2 style: {display: 'inline-block'},
          i
            className: 'devicon-linux-plain',
