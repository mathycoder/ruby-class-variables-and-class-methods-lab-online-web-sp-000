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
  
  def self.count 
    @@count 
  end 
  
  def self.genres
    genres = [] 
    @@genres.each do |genre|
      if !(genres.include?(genre))
        genres << genre 
    end 
    genres 
  end 
  
  def self.artists
    @@artists
  end 
end 