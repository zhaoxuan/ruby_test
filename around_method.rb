def foo1
  foo2 do |v, k|
    p v
    p k
    p '123'
  end
end

def foo2
  yield 'a', 'b'
end

foo1