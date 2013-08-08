require 'ruby-debug'
a = Array.new(10000)

l = a.size
a.each_with_index do |v,index|
  t = []
  (l-index).times do |i|
    debugger
    t += [i]
  end
end