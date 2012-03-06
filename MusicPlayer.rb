require 'song.rb'
require 'CSVReader.rb'

# Handles functionality related to the music player
class MusicPlayer
    # Getters and setters for songs/playlists
    attr_accessor :songs
    attr_accessor :playlists

    # Constructor
    def initialize(csv_file = nil)
        # Initialize the songs here
        @songs = []
        @playlists = []

        @songs = CSVReader.new.read_in_csv_data(csv_file) if csv_file
    end

    # Adds a song to the library
    def add_song(song)
        @songs << song
    end

    # Plays all the songs in the library
    def play(song_name = nil)
        if song_name
            @songs.find do |song|
                # =~ is the same thing as doing .match(/#{song_name}/i)
                puts song.play if song.name =~ /#{song_name.chomp}/i
            end
        else
            # Enumerate through each song and play it
            @songs.each do |song|
                song.play
            end
        end
    end
end