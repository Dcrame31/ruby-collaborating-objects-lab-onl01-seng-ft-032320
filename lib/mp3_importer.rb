class MP3Importer
  attr_accessor :song, :path
  
  #parse files and send filenames to Song class
  def initialize(song)
    @song= song
    @path
  end
  
  def files
    
  end
  
  def import(list)
    list.each {|filename| Song.new_by_filename()
  end
end