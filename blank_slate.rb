class C
 instance_methods.each do |m|
    undef_method m unless m.to_s=~/method_missing|respond_to?|^/
  end

  def method_missing(name, *args)
    "a Ghost Method"
  end
end

obj = C.new
p obj.to_s


p obj.to_s