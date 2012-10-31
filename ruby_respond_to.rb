class Object
  def self.kish
  end
  
end

p Module.class.instance_methods.index(:kish)
p Object.respond_to?(:kish)