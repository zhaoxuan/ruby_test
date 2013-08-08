def f
  p '123'
  raise RuntimeError, 'error'
rescue => e
  p e.to_s
end

f