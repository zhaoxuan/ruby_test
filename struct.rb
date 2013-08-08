require 'debugger'

File.readlines('/Users/john/dump').each do |line|
  debugger
  p line
end
