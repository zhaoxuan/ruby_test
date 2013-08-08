class A

  
    
    def self.a
      b
    end
    
  class << self
    def b
      p 'b'
    end
  end
end

A.a