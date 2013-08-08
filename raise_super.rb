begin
  a = 'asdf'
  raise '123'
rescue Exception => e
  # error = e
  # begin
  #   a = 'asdf'
  #   raise '456'
  # rescue Exception => e
  #   error = e
  # end
  # e = error
  p a
  p e
end