require "pry"
class Song 
  @@count = 0
  @@artists = []
  @@genres = []
  attr_accessor :name, :artist, :genre
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end
  def self.count 
    @@count 
  end
  def self.genres 
    @@genres.uniq 
  end
  def self.artists 
    @@artists.uniq
  end 
  def self.genre_count
    genre_count = {}
    @@genres.each_with_index do |genre, index|
    if  genre_count[genre] 
      genre_count[genre] = index += 1 
    else 
      genre_count[genre] = 1 
    end
  end
   genre_count
  end
  def self.artist_count
    artist_count = {}
    @@artists.each_with_index do |artist, index|
      if artist_count[artist]
        artist_count[artist] = index += 1 
      else 
        artist_count[artist] = 1 
      end 
    end 
    artist_count
  end
  
end