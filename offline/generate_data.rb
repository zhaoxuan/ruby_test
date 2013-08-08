require 'ruby-debug'

current_folder = File.expand_path('../', __FILE__)

f = File.new(File.join(current_folder,"data_hash"), "a+")

a = []
for i in (1000000..9999999)
  a << i
end

100000.times{
  rand_no = rand(a.size)
  number  = a.delete_at(rand_no)
  f.puts("timestamp#{number/1000000},city#{number/100000%10},country#{number/10000%10},publisher_domain#{number/1000%10},ad#{number/100%10},campaign#{number/10%10},searchengine#{number/1%10},#{rand}")  
}

f.close