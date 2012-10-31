require 'rubygems'
require 'ruby-debug'



module A
  module B
    
    def method_name
      p 'b'
    end
    
    
  end
  
end

debugger
include A::B
method_name