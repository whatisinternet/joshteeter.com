{div, h4, h1, a, p, span, i}  = React.DOM

module.exports = React.createFactory React.createClass
  displayName: "contact"

  render: ->

    bem = new Bemmer(block: 'contact')

    div
      style: {border: 'none'}
      className: bem.with(classNames: 'document-container card-panel transparent blue-grey-text text-lighten-5 hoverable'),
      h1 className: bem.with(element: 'notification'),
        a
          href: 'mailto:joshteeter+website@gmail.com',
          i
            className: 'fa fa-envelope white-text'

      h1 className: bem.with(element: 'notification'),
        a
          href: 'http://github.com/whatisinternet',
          i
            className: 'fa fa-github blue-text'

      h1 className: bem.with(element: 'notification'),
        a
          href: 'https://ca.linkedin.com/in/joshteeter',
          i
            className: 'fa fa-linkedin blue-text text-darken-2'

      h1 className: bem.with(element: 'notification'),
        a
          href: 'https://twitter.com/whatisinternet',
          i
            className: 'fa fa-twitter light-blue-text text-lighten-2'

      h1 className: bem.with(element: 'notification'),
        a
          href: 'http://stackoverflow.com/users/2510144/whatisinternet',
          i
            className: 'fa fa-stack-exchange blue-text text-lighten-2'
