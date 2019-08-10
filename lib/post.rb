require 'pry'
class Post
  
  @@all = []
  
  def initialize(title)
    @title = title
    @@all << self
  end
  # can only be called on the Class. e.g. Post.all
  def self.all
    return @@all
  end
  
  def title
    return @title
  end
  
  def author=(author)
    @author = author
  end
  
  def author
    @author
  end
  
  def author_name
    if @author.nil?
      return nil
    end
    return @author.name
  end
end