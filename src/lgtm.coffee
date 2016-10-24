# Description:
#   Displays a random LGTM image from list of images
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot lgtm - displays a random LGTM image
#
# Author:
#   rjanardhana

regexp = /lgtm/i

images = [
    'http://i.imgur.com/tz4gaYO.png',
    'http://i.imgur.com/DpG8GgJ.jpg',
    'http://i.imgur.com/mC8D5IQ.png',
    'http://i.imgur.com/sAeFnJk.png',
    'http://i.imgur.com/C5Ady8v.jpg',
    'http://i.imgur.com/1Q3GH9j.gif',
    'http://i.imgur.com/L9KzKuL.gif',
    'http://i.imgur.com/wMZkjkA.jpg',
    'http://i.imgur.com/xfvw9iJ.jpg',
    'http://i.imgur.com/J5dRpWx.jpg',
    'http://i.imgur.com/zLx5TZ8.jpg'
]

# Listen to regexp and respond
module.exports = (robot) ->
    robot.respond regexp, (msg) ->
        msg.send randomArrayElem images

    randomArrayElem = (arr) ->
        if arr? and arr.length?
            randomIndex = Math.floor(Math.random() * arr.length)
            return arr[randomIndex]
        return 'Something went wrong :('
