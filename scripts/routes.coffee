robott.router.get '/hubot/ping', (req, res) ->
  res.writeHead 200, {"Content-Type": "text/html"};
  res.write "ok"
  res.end
