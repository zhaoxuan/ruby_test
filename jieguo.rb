def multiplier(n)
  lambda{|data| data.collect{|x|x*n}}
  
end

double = multiplier(2)
puts double.call([1,2,3])