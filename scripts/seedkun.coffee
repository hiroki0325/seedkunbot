random = (n) -> Math.floor(Math.random() * n)

module.exports = (robot) ->
  robot.respond /今日の運勢/i, (msg) ->
    fortunes = [
      '大吉',
      '末吉',
      '大凶'
    ]
    result = fortunes[random(3)]
    msg.send "今日の運勢: #{result}";

  robot.hear /店長/i, (msg) ->
    msg.send "ひな";

