class Module
  def deprecate(method_name, &block)
    module_eval <<-END
      alias_method :deprecated_#{method_name}, :#{method_name}
      def #{method_name}(*args, &block)
        $stderr.puts "Warning!!!"
        deprecated_#{method_name}(*args, &block)
      end
    END
  end
end

class Foo
  def foo
    puts "in the foo method"
  end

  deprecate :foo
end

Foo.new.foo