class MP3Importer
  attr_accessor :path
  
  #parse files and send filenames to Song class
  def initialize(path)
    @path
  end
  
  def files
    
  end
  
  def import(list)
    list.each {|filename| Song.new_by_filename(filename)}
  end
end