a1 = ['a', 'b', 'c']
a2 = ['1', '2', '3']
hash = a1.each_with_index.inject({}) do |hash, (val, index)|
  # hash << val.to_s + index.to_s
  hash[a2[index].to_s] =val
  hash
end
p hash