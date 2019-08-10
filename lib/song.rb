require 'pry'
class Song
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all.push(self)
  end
  def self.all
    @@all
  end
  
  def name
    return @name
  end
  
  def artist=(artist)
    @artist = artist
  end
  
  def artist
    @artist
  end
  
  def artist_name
    if @artist.nil?
      return nil
    end
    return @artist.name
  end
  
end