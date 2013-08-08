require 'ruby-prof'
RubyProf.start

10.times do
  p 1
end

data = RubyProf.stop

f = File.open('/Users/john/output.txt', 'w+')
RubyProf::GraphPrinter.new(data).print(f)
