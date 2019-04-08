require 'pry'

class Song 
  
  #Sets reader and writer for the 3 instances
  attr_accessor :name, :artist, :genre 
  
  #setting class variables
  @@count = 0 
  @@genres = [] 
  @@artists = []

#sets the 3 arguments to instance variable and then those instance variable are placed 
#in class variables. Also sets a counter to count every time it is initializied  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist 
    @genre = genre 
    @@genres << @genre
    @@artists << @artist 
    @@count += 1  
    #binding.pry 
  end
  
  def self.count  
    @@count
    #binding.pry 
  end
  
  def self.genres
    @@genres.uniq 
    #binding.pry 
  end 
  
  def self.genre_count 
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1
        #binding.pry 
      else
        genre_count[genre] = 1 
      end
    end
    genre_count
  end
  
  def self.artists
    @@artists.uniq
    #binding.pry 
  end
  
  def self.artist_count 
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist] += 1 
        #binding.pry 
      else 
        artist_count[artist] = 1 
      end 
    end 
    artist_count
  end
end