{div, img, h1, h2,  p, span, i, a}  = React.DOM

module.exports = React.createFactory React.createClass
  displayName: "about:technologies"

  render: ->

    bem = new Bemmer(block: 'about')

    div {},
      p {},
        'And this stuff:'
      span style: {display: 'flex'},
        h2 {},
          a href: "https://opensource.org/",
            span
              className: 'devicons devicons-opensource',
        h2 {},
          a href: "https://git-scm.com/",
            span
              className: 'devicons devicons-git',
        h2 {},
          a href: "https://travis-ci.org/",
            span
              className: 'devicons devicons-travis',
        h2 {},
          a href: "https://trello.com/joshuateeter/recommend",
            span
              className: 'devicons devicons-trello',
        h2 {},
          a href: "https://github.com",
            span
              className: 'devicons devicons-github_badge',
        h2 {},
          a href: "https://en.wikipedia.org/wiki/Linux",
            span
              className: 'devicons devicons-linux',
        h2 {},
          span
            className: 'devicons devicons-apple',
