require 'pry'

class Artist
  include Paramable, Memorable::InstanceMethods
  extend Memorable::ClassMethods, Findable
  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
    # @@artists << self We inherit this from Memorable::InstanceMethods, so we can call super.
     super 
    @songs = []
  end

  # Refactored the code into a module
  # def self.find_by_name(name)
  #   @@artists.detect{|a| a.name == name}
  # end

  def self.all
    @@artists
  end

  # Commenting out to refactor the code
  # def self.reset_all
  #   self.all.clear
  # end

  # def self.count
  #   self.all.count
  # end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  # Refactor this code
  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
end
