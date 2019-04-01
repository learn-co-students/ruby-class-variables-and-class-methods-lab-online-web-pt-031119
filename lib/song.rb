class Song
  
  attr_accessor :artist, :genre, :name 
  
  @@count = 0 
  @@genres = []
  @@artist = []
  
  def initialize (name, artist, genre)
    @name = name 
    @artist = artist 
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artist << artist
  end 
  
  def self.count
    @@count
  end 
  
  def self.genres
    @@genres.uniq
  end 
  
  def self.artist
    @@artist.uniq
  end 
  
  def genre_count(genre_hash)
    genre_hash.each do |genre, songs|
  end 
end 