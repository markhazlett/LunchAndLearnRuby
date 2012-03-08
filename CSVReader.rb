require 'csv'
require 'song.rb'

class CSVReader
  attr_accessor :songs

  # Constructor
  def initialize
    @songs = []
  end

  # Reads in CSV data
  #
  # @param string csv_file_name
  def read_in_csv_data(csv_file_name)
    begin
      CSV.foreach(csv_file_name, headers: true) do |row|
        @songs << Song.new(row['name'], row['location'])
      end
    rescue Exception
      @songs = nil
    end
    @songs
  end
end