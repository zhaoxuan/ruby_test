require 'singleton'

class Singleclass
  include Singleton
end

a = Singleclass.instance
b = Singleclass.instance

p a.object_id
p b.object_id
p a == b