require 'pry'
class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(song_name, song_artist, song_genre)
    @name = song_name
    @artist = song_artist
    @genre = song_genre
    @@count += 1
    @@artists << song_artist
    @@genres << song_genre
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
    genre_hash = Hash.new 0
    @@genres.each do |genre|
      genre_hash[genre] += 1
    end
    genre_hash
  end

  def self.artist_count
    artist_hash = Hash.new 0
    @@artists.each do |artist|
      artist_hash[artist] +=1
    end
    artist_hash
  end
end
# binding.pry
# http://jerodsanto.net/2013/10/ruby-quick-tip-easily-count-occurrences-of-array-elements/ source for above
