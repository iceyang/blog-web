ctrls = require './ctrls'

module.exports = (server)->
  server.get '/articles/:articleId', ctrls.article.queryById
