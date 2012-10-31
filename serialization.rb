class A
  def initialize(a)
    @a = a
  end
  def a
    @a
  end
end
a = A.new(1)
b = Marshal.dump(a)
c = Marshal.load(b)
p b
p c