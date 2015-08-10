request = require 'request'

api =
  first: "/articles/first"
  next: (id)-> "/articles/next/#{id}"
  article: (id)-> "articles/#{id}"

module.exports =
  list: (req, res, next)->

