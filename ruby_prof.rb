require 'rubygems'
require 'ruby-prof'
require 'ruby-debug'


# Profile the code
result = RubyProf.profile do
  1000.each do |i|
    p i
  end
end

# Print a graph profile to text
printer = RubyProf::GraphPrinter.new(result)


f = File.open("/home/zx/workspace/txt_file.txt", "w")
printer.print(f)