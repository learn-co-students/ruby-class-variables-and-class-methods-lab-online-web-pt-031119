class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << @genre
    @@artists << @artist
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
    count = 0
    genre_hash = Hash.new { |hash, key| hash[key] =  }
    while count < @@genres.length
      @@genres.each { |title|
      if title.include? }
  end
  def self.artist_count

  end
end
