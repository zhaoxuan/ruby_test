def f1
  yield
end

def f2(&p)
  p.call
end

def f3(p)
  p.call
end

f1 { puts "f1" }

f2 { puts "f2" }

f3(proc{ puts "f3"})

f3(Proc.new{puts "f3"})

f3(lambda{puts "f3"})

class AddBy

  def initialize(num = 0)
    @num = num
  end

  def to_proc
    Proc.new {|obj| obj.send('+', @num)}
  end

end

add_by_9 = AddBy.new(9)
puts [1,2,3].map(&add_by_9) #输出 [10, 11, 12]

def f0()
  p = Proc.new {return 0}
  p.call
  1
end
p f0

def f2()
  l = lambda { return 0}
  l.call
  1
end
p f2