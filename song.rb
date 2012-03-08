# Song object
class Song
  include Comparable
  # Allows accessability for the name/location
  attr_accessor :name
  attr_accessor :location
  attr_accessor :published

  # Initializes a song object with data
  #
  # @param string name
  # @param string location
  def initialize(name, location)
    @name = name
    @location = location
  end

  # Plays itself based on location
  def play
    # Currently just puts a name later will want to play
    puts "Playing: #{name}"
  end

  def <=>(other)
    self.name <=> other.name
  end
end