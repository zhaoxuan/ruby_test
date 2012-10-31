require 'rubygems'
require 'ruby-debug'

f = File.new("./testfile")
f.seek(0, IO::SEEK_CUR) 
p f.read()