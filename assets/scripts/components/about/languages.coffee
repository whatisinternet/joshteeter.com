{div, img, a, h2,  p, span, i}  = React.DOM

module.exports = React.createFactory React.createClass
  displayName: "about:languages"

  render: ->

    bem = new Bemmer(block: 'about')

    div {},
      p {},
        'I like to work with these languages:'
      span style: {display: 'flex'},
        h2 {},
          a href: "https://www.ruby-lang.org/",
            span
              className: 'devicons devicons-ruby',
        h2 {},
          a href: "https://www.rust-lang.org/",
            span
              className: 'devicons devicons-rust',
        h2 {},
          a href: "https://www.python.org/",
            span
              className: 'devicons devicons-python',
        h2 {},
          a href: "http://coffeescript.org/",
            span
              className: 'devicons devicons-coffeescript',
        h2 {},
          a href: "http://sass-lang.com/",
            span
              className: 'devicons devicons-sass'
        h2 {},
          a href: "https://www.postgresql.org/",
            span
              className: 'devicons devicons-postgresql',
