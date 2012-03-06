#!/usr/bin/env ruby
$LOAD_PATH << './'
require 'MusicPlayer.rb'
require 'song.rb'

music_player = MusicPlayer.new('songs.csv')

puts 'What song would you like to play?'
line = gets
music_player.play(line)