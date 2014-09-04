#!/usr/bin/env ruby

require 'pry'
require './lib/smug_mugger'

#SMUGMUG_API_KEY=tmaCooLdAJObII2aiX6h57iy3UkaeQuj
#SMUGMUG_API_SECRET=941eeb4e4f23109ace4bf6159bcdadb3
#SMUGMUG_API_USER=npglplaytime
#SMUGMUG_API_USER_TOKEN=

c = SmugMugger::Client.new ENV['SMUGMUG_API_KEY'], ENV['SMUGMUG_API_SECRET'], ENV['SMUGMUG_API_USER_TOKEN'], ENV['SMUGMUG_API_USER_SECRET']

albums = c.albums
puts albums

album = c.find_album 'gallery2'
puts album.images.map(&:tiny_url)


