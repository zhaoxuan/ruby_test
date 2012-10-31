require 'drb/drb'

# 监听的地址，你可以改为 0.0.0.0 来支持远程连接
URI="druby://localhost:8787"

class A

  def initialize(a)
    @a = a
  end

  def a
    @a
  end
  
end

class TimeServer

  def get_current_time
    a = A.new('1')
    return Marshal.dump(a)
  end

end

FRONT_OBJECT=TimeServer.new

DRb.start_service(URI, FRONT_OBJECT)
# 
DRb.thread.join