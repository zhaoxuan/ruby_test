
class DynamicFunc
  # def method_missing(m)
  #   puts "No #{m}, so I'll make one..."
  #   yield a
  #   self.class.send(:define_method, m)
  # end
  def method_missing(m, *arge, &block)
    puts "No #{m}, so I'll make one..."
    self.class.send(:define_method, m)
  end

  define_method('zhaoxuan') do
    puts "my name is zhaoxuan"
  end
end

a = DynamicFunc.new

a.fun('123', '356') do |v, k|
  p v
  p k
end
a.fun('12', '23')


