require 'pry'

class Song

  attr_accessor :name, :artist, :genre

  #Class Methods & Variables
  @@count = 0
  @@genres = []
  @@artists = []

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
    genre_hash = {}
    @@genres.uniq.collect do |x|
      genre_hash[x] = @@genres.count(x)
    end
    genre_hash
  end

  def self.artist_count
    artist_hash = {}
    @@artists.uniq.collect do |x|
      artist_hash[x] = @@artists.count(x)
    end
    artist_hash
  end

  #Instance Method & Variables
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

end
