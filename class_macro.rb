class C
end

class << C
  def my_macro
    p "my macro"
  end
end

class C
  my_macro
end