express = require 'express'
cookieParser = require 'cookie-parser'
bodyParser = require 'body-parser'

server = do express
server.use bodyParser.json {}
server.use bodyParser.urlencoded { extended: false }
server.use do cookieParser

# setup view engine
server.set 'views', path.join(__dirname, 'views')
server.set 'view engine', 'ejs'

# setup static resources
server.use express.static(path.join(__dirname, 'public'))

init = require './init'
init server, (err)->
  if err
    console.log err
    console.log err.stack
    return
  port = 10090
  server.listen port, ()->
    console.log 'listening at %s', port
