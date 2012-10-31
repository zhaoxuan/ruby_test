str = "String"
obj = eval(str).new
p obj

class A
  attr_accessor :gender
  
end

a = A.new
p a.gender