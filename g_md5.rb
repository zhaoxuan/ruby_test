require 'rubygems'
require 'ruby-debug'
require 'fileutils'
require 'md5'

file_path = '/home/zx/Pictures/Screenshot at 2012-05-21 19:41:26.png'

p MD5.hexdigest(File.read(file_path))

p '!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'

md6 = Digest::MD5.new()

file = File.open(file_path, 'r')
buf = ""
while buf = file.read(4096)
  md6.update(buf)
end
p md6.to_s
file.close


file_1 = File.size(file_path)
debugger
p file_1