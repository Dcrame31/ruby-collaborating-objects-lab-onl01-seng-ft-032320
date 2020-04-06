class Artist
  attr_accessor :name, :song
  @@all = []
  #creating artist if artist doesn't exist
  #or find instance of artist if it exists
  def initialize(name)
    @name= name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def self.find_or_create_by_name(name)
    if self.find(name)
      self.find(name)
    else
      self.create(name)
    end
  end
  
  def print_songs
    songs.each {|song| puts song}
  end
end