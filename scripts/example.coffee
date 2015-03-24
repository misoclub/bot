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
  robot.hear /こんにちは/,(msg) ->
    msg.send "コンニチワ！"

#  robot.hear /:misobot|@misobot/, (msg) ->
#    msg.send msg.random [
#      "むずかしいこと言うなよ",
#      "えっ？",
#      "キコエマセン",
#      "日本語むつかし",
#      "おれにだって、わからないことくらいある。。。"
#    ]

  robot.hear /おみくじ/, (msg) ->
    msg.send msg.random [
        "超吉デス！！！今年一年無敵です",
        "大吉デス！！競馬に行ってみてはドウデショウ！？",
        "大吉デス！！今年はいいことアリマスヨ！！",
        "中吉デス！お年寄りに優しくしましょう",
        "中吉デス！昨日いいことがあったみたいデス",
        "中吉デス！お金拾うかもしれません",
        "小吉ナリ。まぁ普通にしてればいいんチャウ？",
        "小吉ナリ。ちょっといいことあるカモネ",
        "小吉ナリ。炎上プロジェクト。",
        "凶。火消しと呼ばれる1年にナリソウ",
        "凶。リジェクト。",
        "凶。残念デシタ。",
        "凶。もしかして明日。。。",
        "大凶。それ二重解放してますよ",
        "大凶。リークとの戦い",
        "大凶。NullPointerExceptionにキヲツケテ",
        "大凶。レビュー会にキヲツケロ",
        "ぴょん吉。ヒロシーーー！！"
    ]


  robot.respond /test/i, (msg) ->
    cards = {
      "攻撃系":  ["攻撃系1", "攻撃系2", "攻撃系3", "攻撃系4"],
      "交渉系":  ["交渉系1", "交渉系2", "交渉系3", "交渉系4"],
      "変換系":  ["変換系1", "変換系2", "変換系3", "変換系4"],
      "防衛系":  ["防衛系1", "防衛系2", "防衛系3", "防衛系4"],
      "大得点系": ["大得点系1", "大得点系2", "大得点系3", "大得点系4"],
      "その他系": ["その他系1", "その他系2", "その他系3", "その他系4"]
    }
    for card in cards
      msg.send card[0]

  # robot.hear /badger/i, (msg) ->
  #   msg.send "Badgers? BADGERS? WE DON'T NEED NO STINKIN BADGERS"
  #
  # robot.respond /open the (.*) doors/i, (msg) ->
  #   doorType = msg.match[1]
  #   if doorType is "pod bay"
  #     msg.reply "I'm afraid I can't let you do that."
  #   else
  #     msg.reply "Opening #{doorType} doors"
  #
  # robot.hear /I like pie/i, (msg) ->
  #   msg.emote "makes a freshly baked pie"
  #
  # lulz = ['lol', 'rofl', 'lmao']
  #
  # robot.respond /lulz/i, (msg) ->
  #   msg.send msg.random lulz
  #
  # robot.topic (msg) ->
  #   msg.send "#{msg.message.text}? That's a Paddlin'"
  #
  #
  # enterReplies = ['Hi', 'Target Acquired', 'Firing', 'Hello friend.', 'Gotcha', 'I see you']
  # leaveReplies = ['Are you still there?', 'Target lost', 'Searching']
  #
  # robot.enter (msg) ->
  #   msg.send msg.random enterReplies
  # robot.leave (msg) ->
  #   msg.send msg.random leaveReplies
  #
  # answer = process.env.HUBOT_ANSWER_TO_THE_ULTIMATE_QUESTION_OF_LIFE_THE_UNIVERSE_AND_EVERYTHING
  #
  # robot.respond /what is the answer to the ultimate question of life/, (msg) ->
  #   unless answer?
  #     msg.send "Missing HUBOT_ANSWER_TO_THE_ULTIMATE_QUESTION_OF_LIFE_THE_UNIVERSE_AND_EVERYTHING in environment: please set and try again"
  #     return
  #   msg.send "#{answer}, but what is the question?"
  #
  # robot.respond /you are a little slow/, (msg) ->
  #   setTimeout () ->
  #     msg.send "Who you calling 'slow'?"
  #   , 60 * 1000
  #
  # annoyIntervalId = null
  #
  # robot.respond /annoy me/, (msg) ->
  #   if annoyIntervalId
  #     msg.send "AAAAAAAAAAAEEEEEEEEEEEEEEEEEEEEEEEEIIIIIIIIHHHHHHHHHH"
  #     return
  #
  #   msg.send "Hey, want to hear the most annoying sound in the world?"
  #   annoyIntervalId = setInterval () ->
  #     msg.send "AAAAAAAAAAAEEEEEEEEEEEEEEEEEEEEEEEEIIIIIIIIHHHHHHHHHH"
  #   , 1000
  #
  # robot.respond /unannoy me/, (msg) ->
  #   if annoyIntervalId
  #     msg.send "GUYS, GUYS, GUYS!"
  #     clearInterval(annoyIntervalId)
  #     annoyIntervalId = null
  #   else
  #     msg.send "Not annoying you right now, am I?"
  #
  #
  # robot.router.post '/hubot/chatsecrets/:room', (req, res) ->
  #   room   = req.params.room
  #   data   = JSON.parse req.body.payload
  #   secret = data.secret
  #
  #   robot.messageRoom room, "I have a secret: #{secret}"
  #
  #   res.send 'OK'
  #
  # robot.error (err, msg) ->
  #   robot.logger.error "DOES NOT COMPUTE"
  #
  #   if msg?
  #     msg.reply "DOES NOT COMPUTE"
  #
  # robot.respond /have a soda/i, (msg) ->
  #   # Get number of sodas had (coerced to a number).
  #   sodasHad = robot.brain.get('totalSodas') * 1 or 0
  #
  #   if sodasHad > 4
  #     msg.reply "I'm too fizzy.."
  #
  #   else
  #     msg.reply 'Sure!'
  #
  #     robot.brain.set 'totalSodas', sodasHad+1
  #
  # robot.respond /sleep it off/i, (msg) ->
  #   robot.brain.set 'totalSodas', 0
  #   robot.respond 'zzzzz'
