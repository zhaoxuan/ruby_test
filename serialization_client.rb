require 'drb/drb'

SERVER_URI="druby://localhost:8787"

# 这句是必要的，因为我们很快会用到回调与引用，一会说。
# 所以纯粹的客户端是不存在的。
DRb.start_service

class A

  def initialize(a)
    @a = a
  end

  def a
    @a
  end
  
end

timeserver = DRbObject.new_with_uri(SERVER_URI)
a = timeserver.get_current_time
b = Marshal.load(a)
p b.a