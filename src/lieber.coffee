# Description:
#   Hubot gives the ultimate compliment.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot lieber me - "@User, you are the smell of clean laundry."
#   hubot lieberism @User - "@User is a force to be reckoned with."
#
# Author:
#   arosenb2

phrases = require './data/phrases.json'

module.exports = (robot) ->
  robot.respond /lieber(|ism) (\S*)/i, (msg) ->
    name = msg.match[1].trim()
    switch name
      when 'me'
        msg.reply ", you are ${msg.random phrases}"
      else
        msg.send "#{name} is ${msg.random phrases}"
