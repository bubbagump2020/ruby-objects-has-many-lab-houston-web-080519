require 'pry'
class Artist
  attr_accessor :name
  def initialize(name)
   @name = name
   @songs = []
   @song_count = 0
  end
  
  def add_song(song)
    @songs << song
    song.artist = self
    @song_count
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
    @song_count += 1
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  
  def self.song_count
    result = []
    Song.all.each do |song|
      result.push(song.name)
    end
    result.length
  end
  
end