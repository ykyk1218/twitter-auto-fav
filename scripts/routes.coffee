module.exports = (robot) ->
  robot.router.get '/hubot/ping', (req, res) ->
    robot.logger.info 'ping ping ping'
    res.send 200
