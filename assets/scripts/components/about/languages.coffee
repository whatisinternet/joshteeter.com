{div, img, h1, h2,  p, span, i}  = React.DOM

module.exports = React.createFactory React.createClass
  displayName: "about:languages"

  render: ->

    bem = new Bemmer(block: 'about')

    div {},
      p {},
        'I like to work with these languages:'
      span style: {display: 'inline-block'},
        h2 style: {display: 'inline-block'},
          i
            className: 'devicon-ruby-plain-wordmark',
        h2 style: {display: 'inline-block'},
          i
            className: 'devicon-python-plain-wordmark',
        h2 style: {display: 'inline-block'},
          i
            className: 'devicon-coffeescript-original-wordmark',
        h2 style: {display: 'inline-block'},
          i
            className: 'devicon-sass-original'
        h2 style: {display: 'inline-block'},
          i
            className: 'devicon-postgresql-plain-wordmark',
