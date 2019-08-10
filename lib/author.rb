class Author
  attr_accessor :name
  def initialize(name)
    @name = name
  end
  
  def add_post(post)
    post.author = self
  end
  
  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
  end
  
  def posts
    Post.all.select {|post| post.author == self}
  end
  
  def self.post_count
    result = []
    Post.all.each do |post|
      result.push(post.name)
  end
end