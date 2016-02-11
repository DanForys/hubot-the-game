# Description:
#   Losing the game. Together.
var GAME_ODDS = process.env.HUBOT_GAME_ODDS || 1000;

responses = [
  'You just lost Game roulette.',
  'Hey you just reminded me - have you played The Game lately?',
  'http://images2.fanpop.com/image/photos/10600000/you-lose-D-you-lost-the-game-10676802-500-400.jpg',
  'http://sd.keepcalm-o-matic.co.uk/i/keep-calm-and-don-t-lose-the-game.png',
  'http://static.fjcdn.com/pictures/You_40d84b_236897.jpg',
  'http://treasure.diylol.com/uploads/post/image/156776/resized_philosoraptor-meme-generator-if-i-try-to-lose-the-game-and-succeed-do-i-win-the-game-b40434.jpg',
  'http://www.quickmeme.com/img/3b/3b522a293bd0b221cb16a385cbabc750217cbd659c71d2ef24a2d5f415756bf2.jpg',
  'http://the-back-row.com/media/blogs/TBR/thugaim.jpg',
  'http://orig02.deviantart.net/6a74/f/2010/115/7/9/lose_the_game_llama_by_terresebatate.png',
  'http://gameswallpaperhd.com/wp-content/uploads/2013/12/you-just-lost-the-gamelose-the-game-on-tumblr-top-host-games-information-btgtvzur.jpg',
  'http://www.losethegame.net/img/smbc.png',
  'http://cdn.meme.am/instances/500x/66185342.jpg',
  'http://cdn.meme.am/instances/66273263.jpg',
  'http://www.quickmeme.com/img/ef/ef6f29ca5fc4492b95ee40e4698db0ead0668c1dc50995f9e3bcf745fb2dfd2d.jpg',
  'http://rlv.zcache.co.uk/the_game_you_lose_t_shirt-rd7cb0d6bd8ec4288a5a82e0f6a1800db_jf4oz_324.jpg',
  'http://assets.shitbrix.com/hashed_silo_content/silo_content/25200/resized/633509783214835006-when-you-see-it---you-just-lost-the-game.jpg',
  'http://www.quickmeme.com/img/10/10fbc46aa85089036e7c621e8deb2fdadfc3335c41202a2df0f5c93419189343.jpg',
  'http://i178.photobucket.com/albums/w253/pimpinyoshi64/remindercat.jpg'
]

replies = [
  'Oh piss off',
  'AAARRRGGGHH',
  'NOT AGAIN',
  'FFS',
  'Get in the sea',
  'Ooof!',
  'I\'ll get you back for this. Mark my words.',
  'http://orig03.deviantart.net/a0d9/f/2012/122/8/8/fffuuu_by_stevesjobes-d4ybdhq.jpg',
  'http://orig13.deviantart.net/cbf1/f/2011/164/f/8/fffuuu_by_tiochorchi-d38supf.jpg',
  'https://media3.giphy.com/media/Due7iOPZTJHSo/200_s.gif',
  'I just lost the game'
]

module.exports = (robot) ->
  robot.hear /.*$/i, (msg) ->
    # Roll the dice!
    if (Math.round(Math.random() * GAME_ODDS) == 1)
      msg.reply(responses[Math.floor(Math.random() * responses.length)])

  robot.hear /the game/i, (msg) ->
    msg.reply(replies[Math.floor(Math.random() * replies.length)])
