require 'pry'

class Song

  attr_reader :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
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
    genre_count = {}
    @@genres.group_by {|genre| genre}.each do |genre, count_array|
      genre_count[genre] = count_array.length
    end
    genre_count
  end

  def self.artist_count
    artist_count = {}
    @@artists.group_by {|artist| artist}.each do |artist, count_array|
      artist_count[artist] = count_array.length
    end
    artist_count
  end

end
