class A
  def self.p1
    p2
  end

  def self.p2
    p '123'
  end
end

A.p1
