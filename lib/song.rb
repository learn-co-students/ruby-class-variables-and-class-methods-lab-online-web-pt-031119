require 'pry'
class Song #All we need are class variables & methods!
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}
#produces individual songs, each with a name, artist and genre < initialize
  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
    @@genre_count
  end

#keep track of the # of songs it creates => # > Song.count
  def self.count
    @@count
  end

#show all the artists of existing songs => array > Song.artists
  def self.artists
    @@artists.uniq
    #binding.pry
  end

#show us all the genres of existing songs => array > Song.genres
  def self.genres
    @@genres.uniq
  end

#keep track of the number of songs of each genre it creates => hash > Song.genre_count
# => hash, key = genre, value = #
  def self.genre_count
    @@genres.each do |g|
      @@genre_count[g] = @@genres.count(g)
    end
    @@genre_count
    #binding.pry
  end

#show us the number of songs each artist has > Song.artist_count
# => hash, key = artist, value = #
  def self.artist_count
    @@artists.each do |a|
      @@artist_count[a] = @@artists.count(a)
    end
    @@artist_count
  end
  
end
