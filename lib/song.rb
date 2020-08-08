class Song 

   #name has a name
   #artist belongs to an artist
  attr_accessor :name, :artist

  # @@all is a class variable set to an array
  @@all = []
   
   #newis initialized with an argument of a name
   #pushes new instances into a class variable called @@all upon initialization
   def initialize(name)
    @name = name 
    @@all << self
  end 

  #.all is a class method that returns an array of all song instances that have been created
  def self.all
    @@all 
  end 

   #artist_name knows the name of its artist returns nil if the song does not have an artist
  def artist_name
    artist.name if artist
  end 
end 

















# class Song

#     @@all = []

#     attr_accessor :name 

#     def initialize(name)
#         @name = name 
#         @song << self 
#     end 

#     def add_song(song)
#         @songs << song 
#     end 

#     def self.all 
#       @@all 
#     end 

# end 























# class Song
#     attr_accessor :artist, :name
  
#     def initialize(name)
#       @name = name
#     end
  
#     def artist_name
#       if artist
#         self.artist.name
#       else
#         nil
#       end
#     end
  
#   end 