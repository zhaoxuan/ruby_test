require 'rubygems'
require 'debugger'
module CustomInitializers
  def hash_init(*args_name)
    debugger
    define_method(:initialize) do |*args|
      data = args.first || {}
      args_name.each do |a_name|
        instance_variable_set "#{a_name}", data[a_name]
      end
    end
  end
end
Class.send :include, CustomInitializers

class Search
  hash_init :name
end

Search.new(:b_name => 'zx')