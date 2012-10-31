class String

  alias :my_size :size
  
  def size
    'myself method'
  end
  # alias :my_size :size

end

p 'asdf'.my_size