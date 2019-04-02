class Song
  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = {}
  @@artist_count = {}
  attr_accessor :name, :artist, :genre

  def initialize(song_name, song_artist, song_genre)
    @name = song_name
    @artist = song_artist
    @genre = song_genre
    @@count += 1
    @@genres << song_genre
    @@artists << song_artist
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
    @@genres.each do |genre|
      if @@genre_count.has_key?(genre)
        counter = @@genre_count[genre]
        counter += 1
        @@genre_count[genre] = counter
      elsif @@genre_count == nil || !@@genre_count.has_key?(genre)
        @@genre_count[genre] = 1
      end
    end
    return @@genre_count
  end

  def self.artist_count
    @@artists.each do |artist|
      if @@artist_count.has_key?(artist)
        counter = @@artist_count[artist]
        counter += 1
        @@artist_count[artist] = counter
      elsif @@artist_count == nil || !@@artist_count.include?(artist)
        @@artist_count[artist] = 1
      end
    end
    return @@artist_count
  end

end
