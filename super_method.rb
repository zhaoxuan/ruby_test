class A
  def initialize
    p 'A'
  end
  
  def fun
    p 'A fun'
  end
end

class B < A
  def initialize
    super
  end
  def fun
    super
  end
end

B.new.fun