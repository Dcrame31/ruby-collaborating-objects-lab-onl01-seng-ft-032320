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
  
   def self.new_by_filename(file_name)
      self.name = file_name.split(" - ")[0]
      self.artist.name = file_name.split(" - ")[1]
  end

  def artist_name
    
  end
end