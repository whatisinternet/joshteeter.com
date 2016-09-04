{div, img, a, h2,  p, span, i}  = React.DOM

module.exports = React.createFactory React.createClass
  displayName: "about:frameworks"

  render: ->

    bem = new Bemmer(block: 'about')

    div {},
      p {},
        'These frameworks:'
      span style: {display: 'flex'},
        h2 {},
          a href: "https://facebook.github.io/react/",
            span
              className: 'devicons devicons-react',
        h2 {},
          a href: "http://rubyonrails.org/",
            span
              className: 'devicons devicons-ruby_on_rails',
