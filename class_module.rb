module ClassModule
  module ClassMethods

    def output
      p 'output'
    end
    
  end
  
  module InstanceMethods
    def initialize
      p 'initialize'
    end
  end
  
  def self.included(receiver)
    receiver.extend         ClassMethods
    receiver.send :include, InstanceMethods
    receiver.instance_variable_set :@output_directives, 'a'
  end

end

class A
  include ClassModule
end

a = A.new
p a.output_directives