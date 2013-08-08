require File.expand_path('../class_ruby', __FILE__)
require 'debugger'

# module ModuleJ
#   case ARGV.first
#   when '-d'
#     debugger
#     ClassJ.func

#   when '-a'
#     p '123'
#   end
# end

module ModuleJ
  at_exit { p '123'}
  p '13'
end