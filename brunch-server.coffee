bs = require('browser-sync').create()

module.exports = (port, path, callback) ->
  bs.init {
    server: path
    port: port
    files: 'app/assets/**/*, app/styles/**/*'
  }, callback
  return
