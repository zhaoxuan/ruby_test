class ClassInstanceValue

  def self.a
    @a = 1
    b
  end

  def self.b
    p @a
  end
  
end

ClassInstanceValue.a
