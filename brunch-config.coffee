exports.config =
  # See http://brunch.io/#documentation for docs.
  files:
    javascripts:
      joinTo: 'app.js'
    stylesheets:
      joinTo: 'app.css'
    templates:
      joinTo: 'app.js'
  plugins:
    sass:
      options:
        includePaths: ['node_modules/bootstrap/scss']
    static:
      processors: [
        require('html-brunch-static') {
          processors: [
            require('jade-brunch-static')(pretty: true)
          ]
        }
      ]
