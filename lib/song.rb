class Song
  attr_accessor :name, :artist
  @@all = []
  #creating song names sent from mp3 class
  #send artist's name to Artist class
  def initialize(name)
    @name= name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.new_by_filename(filename)
    self.name = filename.split(" - ")[1]
    self.artist.name = filename.split(" - ")[0]
  end

  def artist_name
    
  end
end