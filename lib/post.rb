class Post 

    #title has a title
    #author belongs to an author
    attr_accessor :title, :author

    #is a class variable set to an array
    @@all = []

    #new is initialized with an argument of a title
   #pushes new instances into a class variable called @@all upon initialization

    def initialize(title)
        @title= title 
        @@all << self 
    end 

    #.all is a class method that returns an array of all post instances that have been created
    def self.all
        @@all 
    end 
    
    #author_name knows the name of its author returns nil if the post does not have an author
    def author_name
        author.name if author
    end 
end 