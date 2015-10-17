# Description:
#   Example scripts for you to examine and try out.
#
# Notes:
#   They are commented out by default, because most of them are pretty silly and
#   wouldn't be useful and amusing enough for day to day huboting.
#   Uncomment the ones you want to try and experiment with.
#
#   These are from the scripting documentation: https://github.com/github/hubot/blob/master/docs/scripting.md

module.exports = (robot) ->
  robot.hear /hogehogehoge/, (res)  ->
    # お気に入りに登録する
    fav_api_url = "https://api.twitter.com/1.1/favorites/create.json"
    tweet_id = res.message.user.status_id

    twitter = require('twitter')
    client = new twitter(
      consumer_key       : process.env.HUBOT_TWITTER_KEY
      consumer_secret    : process.env.HUBOT_TWITTER_SECRET
      access_token_key   : process.env.HUBOT_TWITTER_TOKEN
      access_token_secret: process.env.HUBOT_TWITTER_TOKEN_SECRET
    )

    client.post fav_api_url, {id: tweet_id}, (data, err) ->
      if err
        console.log err

