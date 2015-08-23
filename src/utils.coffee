module.exports =
  parseJson: (string, callback)->
    try
      result = JSON.parse string
      callback null, result
    catch err
      callback err
