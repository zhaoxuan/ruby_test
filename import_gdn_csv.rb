
file = File.read('/Users/john/Documents/verticals.csv')
file.each_line do |line|
  line.split(',').each do |i|
    p i.chomp
  end
end