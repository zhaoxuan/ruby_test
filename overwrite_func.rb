class A
  def save(p)
    if p == 1
      create
    else
      update
    end
  end

  def create
    p 'create'
  end

  def update
    p 'update'
  end
  
  
end


class B < A
  def save(a)
    if a == 1
      p 'create'
    else
      super
    end
  end

  def create
    p 'sub create'
  end
end

B.new.save(2)