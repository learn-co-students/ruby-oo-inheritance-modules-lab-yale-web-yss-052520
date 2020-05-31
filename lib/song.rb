require 'pry'

class Song
  include Paramable, Memorable::InstanceMethods
  extend Memorable::ClassMethods, Findable
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
  end

  # Refactored the code
  # def self.find_by_name(name)
  #   @@songs.detect{|a| a.name == name}
  # end

  def self.all
    @@songs
  end

  # Commenting out to refactor the code.
  # def self.reset_all
  #   self.all.clear
  # end

  # def self.count
  #   self.all.count
  # end

  def artist=(artist)
    @artist = artist
  end

  # Refactor this code
  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
end
