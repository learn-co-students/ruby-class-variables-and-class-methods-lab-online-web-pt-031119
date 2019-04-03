require 'pry'

class Song 
  attr_accessor :name, :artist, :genre
  @@count = 0 
  @@artists = []
  @@genres = []  

  def initialize(name, artist, genre)
    @@count += 1
    
    @name = name 
    @artist = artist 
    @@artists << @artist
    @genre = genre
    @@genres << @genre
  end 
  
  def self.count 
    @@count
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq
  end 
  
  
  def self.genre_count
    hash = {} 
    
    @@genres.each do |genre|
    # if more than one genre add the count by 1
      # hash[genre]=count
      if hash[genre]
        # binding.pry
        hash[genre] += 1
      else 
        hash[genre] = 1
      end
    end
    hash
  end 
  
  
  
  
  
  
  
  def self.artist_count
    hash = {}
    
    @@artists.each do |genre|
      if hash[genre]
        hash[genre] += 1 
      else 
        hash[genre] = 1 
      end 
    end
      hash
  end 
  
end 