class BarcodeGenerator
  attr_accessor :out
  def self.generate( text )
    bg = self.new( text )
    if File.exists? bg.out
      return bg.out 
    else
      bg.write_png
      return bg.out
    end
  end

  def initialize(text)
    prepare_path_if_not_exist
    @text = text
    @out = "#@path/barcode_#{@text}.eps"
  end
  
  def prepare_path_if_not_exist
    @path = Rails.root.join('public', 'invitations' , 'barcode_test')
    FileUtils.mkdir_p(@path) unless File.directory? @path
  end

  def write_png
    `zint -w 10 -o #@out -d #@text`
  end

end
