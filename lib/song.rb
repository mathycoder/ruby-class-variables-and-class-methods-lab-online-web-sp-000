class Song 
  attr_accessor :name, :artist, :genre 
  @@count = 0 
  @@genres = [] 
  @@artists = [] 
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist #if !(@@artists.include?(artist))
    @genre = genre 
    @@genres << genre #if !(@@genres.include?(genre))
    @@count += 1 
  end 
  
  def self.genre_count
    
  end 
  
  def self.count 
    @@count 
  end 
  
  def self.genres
    genres = [] 
    @@genres.each do |genre|
      if !(genres.include?(genre))
        genres << genre 
      end 
    end 
    genres 
  end 
  
  def self.artists
    artists = [] 
    @@artists.each do |artist|
      if !(artists.include?(artist))
        artists << artist 
      end 
    end 
    artists 
  end 
end 