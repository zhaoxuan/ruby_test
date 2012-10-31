class A

  class << self
    
    def a
      b
    end

    def b
      p 'b'
    end
  end
end

A.a