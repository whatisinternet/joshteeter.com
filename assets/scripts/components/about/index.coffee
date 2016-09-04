{div, img, h1, h2,  p, span, i}  = React.DOM

gravatar = require('gravatar')

Languages = require('./languages')
Frameworks = require('./frameworks')
Technologies = require('./technologies')
Editor = require('./editor')

module.exports = React.createFactory React.createClass
  displayName: "about"

  render: ->

    bem = new Bemmer(block: 'about')

    div
      style: {border: 'none'}
      className: bem.with(classNames: 'document-container card-panel transparent blue-grey-text text-lighten-5 hoverable'),

      div className: 'row',
        div className: 'col s12 l4 center-align',
          img
            className: 'circle responsive-img'
            src: "http://#{gravatar.url('joshteeter@gmail.com', {s: '200'})}"
        div className: 'col s12 l8',
          h1 {},
            "Hey, I'm Josh."
          'I am a software developer and a computer science student. '
          "I like to watch Formula One and Bundesliga Soccer. In my spare time I listen to podcasts, mountain bike and write open source software. I'm passionate about learning, software, computer related issues, computer ethics, and mental health."
          Editor {}
          Languages {}
          Frameworks {}
          Technologies {}


