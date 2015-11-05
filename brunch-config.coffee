module.exports = config:
  # See http://brunch.io/#documentation for docs.
  npm:
    enabled: true
  files:
    javascripts:
      joinTo: 'js/app.js'
    stylesheets:
      joinTo: 'app.css'
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
