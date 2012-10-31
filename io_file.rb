require 'rubygems'
require 'ruby-debug'

path = '/home/zx/workspace/ruby_test/500MB'
a = IO.read_nonblock(path, 'r+')
debugger
p '123'