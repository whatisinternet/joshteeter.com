{div, video, h5, h3, a}  = React.DOM

module.exports = React.createFactory React.createClass
  displayName: "main"

  render: ->

    bem = new Bemmer(block: 'main')

    div {},
      div className: bem.with(element: 'centered-body'),
        h3
          className: bem.with(element: 'text', classNames: 'white-text'),
          "Josh Teeter"
        div className: bem.with(element: 'nav', classNames: 'row'),
            div className: bem.with(element: 'link', classNames: 'right-align'),
              h5 {},
                a
                  href: "/projects",
                    "My projects"
            div className: bem.with(element: 'link', classNames: 'right-align'),
              h5 {},
                a
                  href: "/about",
                    "About me"
            div className: bem.with(element: 'link', classNames: 'right-align'),
              h5 {},
                a
                  href: "/contact",
                    "Contact me"
