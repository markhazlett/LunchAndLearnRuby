# Song object
class Song
    # Allows accessability for the name/location
    attr_accessor :name
    attr_accessor :location

    # Initializes a song object with data
    def initialize(name, location)
        @name = name
        @location = location
    end

    # Plays itself based on location
    def play
        # Currently just puts a name later will want to play
        puts "Playing: #{name}"
    end
end