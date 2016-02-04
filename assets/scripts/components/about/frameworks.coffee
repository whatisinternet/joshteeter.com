{div, img, h1, h2,  p, span, i}  = React.DOM

module.exports = React.createFactory React.createClass
  displayName: "about:frameworks"

  render: ->

    bem = new Bemmer(block: 'about')

    div {},
      p {},
        'These frameworks:'
      span style: {display: 'inline-block'},
        h2 style: {display: 'inline-block'},
          i
            className: 'devicon-react-original-wordmark',
        h2 style: {display: 'inline-block'},
          i
            className: 'devicon-rails-plain-wordmark',
