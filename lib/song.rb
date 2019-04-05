class Song
    attr_accessor :name, :artist, :genre 
    
     @@count = 0 
     @@genres = []
     @@artists = []
    # @@genre_count = {}
    # @@artist_count ={}
     
     def initialize(name,artist,genre)
       @@count += 1
       @name = name
       @artist = artist
       @genre = genre 
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


  # def self.genre_count
  #   @@genres.each do |genre|
  #   @@genre_count[genre] ||= 1
  #   @@genre_count[genre] += 1
  # end

  # def self.artist_count
  #   @@artists.each do |artist|
  #   @@artist_count[artist] ||= 1
  #   @@artist_count[artist] += 1
  # end
  
  def self.genre_count
    genre_count = {}
   @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1 
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end
  
  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist] += 1 
      else
        artist_count[artist] = 1
      end
    end
    artist_count
  end
end