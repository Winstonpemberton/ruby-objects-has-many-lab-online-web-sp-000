class Author
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def posts
    Post.all.select do |posts|
      song.author == self
    end
  end

  def add_post(post)
    song.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    song.author = self
  end

  def self.post_count
    Post.all.length
  end
end
