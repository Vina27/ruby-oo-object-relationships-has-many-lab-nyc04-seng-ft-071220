class Author

    #name has an attr_accessor for name
    attr_accessor :name
  
    @@all = []

    #new is initialized with a name
    def initialize(name)
      @name = name
      @@all << self
    end
   
    #posts has many posts?
    def self.all
      @@all
    end

    #add_post takes in an argument of a post and associates that post with the author by telling the post that it belongs to that author
    def add_post(post)
      post.author = self
    end
  
     #add_post_by_title takes in an argument of a post title, creates a new post with it and associates the post and author
    def add_post_by_title(title)
      post = Post.new(title)
      post.author = self
    end
   
    #posts has many posts
    def posts
      Post.all.select do |post| 
        post.author == self
      end 
    end
  

    #.post_count is a class method that returns the total number of posts associated to all existing authors
    def self.post_count 
      Post.all.count
    end
  end