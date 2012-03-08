#!/usr/bin/env ruby
$LOAD_PATH << './'
require 'MusicPlayer.rb'
require 'song.rb'

music_player = MusicPlayer.new('songs.csv')
music_player.welcome

song = Song.new("test", "test")
music_player << song

second_song = Song.new("second", "second")
puts song < second_song

puts 'What song would you like to play?'
line = gets
music_player.play(line)