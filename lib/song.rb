 require 'pry'
 class Song 
   attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []  
  @@genres = []
  
  def initialize(name, artist, genre)
     @name = name
     @artist = artist
     @genre = genre
     @@count +=1 
     @@artists<< artist 
     @@genres<< genre 
  end   
    #binding.pry 
  
  def self.count
    @@count
  end
  
  def self.artists
    @@artists.uniq 
  end

  def self.genres 
    @@genres.uniq 
  end
  
  def self.genre_count(genre)
    totals = {}
    i = 0 
    while i<@@genres.length 
    @@genres.map do |genre, song| totals<< ["#{genre}"=> "#{genre}".count]
      end 
    i+=1
    end 
  totals
end

end 