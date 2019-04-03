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
    count = 0
    @@genres.each do |genre|
    # if more than one genre add the count by 1
      # hash[genre]=count
      if genre == genre
        count += 1
      binding.pry
      elsif genre == 1
        count = 1
      end
      hash[genre] = count
    end
    hash
  end 
  
  def self.artist_count
    
  end 
  
end 