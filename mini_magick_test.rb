require 'rubygems'
require 'mini_magick'
require 'ruby-debug'

path = "/home/zx/workspace/ruby_test/test_image.png"
i_path = "/home/zx/workspace/ruby_test/test_i.png"

image = MiniMagick::Image.open(path)
debugger
image.resize("100x100>")
image.write(i_path)