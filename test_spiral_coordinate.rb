require 'rubygems'
require 'ruby-debug'

def fib(n)
  
  if n == 0 || n == 1
    return 1
  end
  return fib(n - 1) + fib(n - 2)
end

fib(5)