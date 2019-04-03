require 'pry'


class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []
  # @@genre_count = {}

  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @@artists << @artist = artist
    @@genres << @genre = genre
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
    genre_count = {}
    @@genres.each do |genres|
      if !genre_count.include?(genres)
        genre_count[genres] = 1
      else
        genre_count[genres] += 1
      end
    end
    genre_count
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |artists|
      if !artist_count.include?(artists)
        artist_count[artists] = 1
      else
        artist_count[artists] += 1
      end
    end
    artist_count
  end

end
