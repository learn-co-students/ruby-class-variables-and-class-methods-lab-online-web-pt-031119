require 'pry'

class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @@count += 1
    @@genres << genre
    @@artists << artist
    @name = name
    @artist = artist
    @genre = genre
  
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
    genreHash = {}
    @@genres.each do |songGenre|
      genreHash[songGenre] = @@genres.count(songGenre)
    end
    genreHash
  end

  def self.artist_count
    artistHash = {}
    @@artists.each do |entertainer|
      artistHash[entertainer] = @@artists.count(entertainer)
    end
    artistHash
  end
  
end