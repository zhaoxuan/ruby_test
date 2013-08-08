# JSON::ParserError
require "json"

begin
p '123'

  raise ArgumentError

rescue JSON::ParserError
  p 'rescue JSON::ParserError'

rescue Exception => e
  p 'ArgumentError'

end