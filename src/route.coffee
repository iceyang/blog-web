ctrls = require './ctrls'

module.exports = (server)->
  server.get '/', ctrls.home.index
  server.get '/articles/:articleId', ctrls.article.queryById
