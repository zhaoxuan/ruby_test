
# t1=Thread.new{
#   sleep 3
#   b = ThreadTest.new
# }

# t2=Thread.new{
  
# }

# t1.join
# t2.join


class ManyThread
  @i = ''
  def self.i=(i)
    @i = i
  end
  def self.i
    @i
  end

  def tet(i)
    ManyThread.i
  end
  
end
ManyThread.i = '123'
p ManyThread.new.tet(1)
p ManyThread.new.tet(2)