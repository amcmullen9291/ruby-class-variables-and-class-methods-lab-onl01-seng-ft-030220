 require 'pry'
 class Song 
   attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []  
  
  def initialize(name, artist, genre)
     @name = name
     @artist = artist
     @genre = genre
     @@count +=1 
  end   
    #binding.pry 
  
  def self.artists
      @@artists
  end
  
  def self.getClassVar
    @@classVariable
  end

end
