require "pry"

class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = {}
  @@artists_count = {}
  
  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
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
    @@genres.each do |genres|
    @@genre_count[genres] ||= 0
    @@genre_count[genres] += 1
  end
  @@genre_count
  end
  
  def self.artist_count
    @@artists.each do |artists|
      @@artists_count[artists] ||= 0
      @@artists_count[artists] += 1
  end
  @@artists_count
  end
end