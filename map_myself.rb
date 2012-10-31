def r_map array, &block
  a = array.class.new
  array.each do |v|
    a << yield(v)
  end
  a
end

arr = [1,2,3]
a = r_map arr do |v|
  v = v + 1
end
p a