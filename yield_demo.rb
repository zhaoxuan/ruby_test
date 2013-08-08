def f(a)
  p yield a
end

f(1) do |b|
  b*2
end