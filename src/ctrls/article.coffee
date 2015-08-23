request = require 'request'

utils = require '../utils'

api =
  first: "/articles/first"
  next: (id)-> "/articles/next/#{id}"
  article: (id)-> "http://127.0.0.1:10080/api/articles/#{id}"

module.exports =
  queryById: (req, res, next)->
    articleId = req.params.articleId
    request.get api.article(articleId), (err, result)->
      return next err if err
      utils.parseJson result.body, (err, body)->
        return next err if err
        res.render 'article', body
