require 'clockwork'
include Clockwork

handler do |job|
  puts "Running #{job}"
end
every(3.seconds, 'frequent.job')
p '123'