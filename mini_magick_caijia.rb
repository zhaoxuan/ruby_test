require 'rubygems'
require 'mini_magick'
require 'ruby-debug'

command = "convert -size x20 -gravity center -background white -font /home/zx/chinese_font.ttf -fill red -pointsize 16 label:\"123\" "
`touch /tmp/zhao123123.jpg`
img = MiniMagick::Image.new('/tmp/zhao123123.jpg')
p img.size '100x100'
