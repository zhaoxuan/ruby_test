require "rubygems"
require "mail"

# :address => "10.1.1.217", 
#   :port => 25, 
#   :domain => "optimix.asia",
#   :user_name => "report", 
#   :password => "233Th338",  
#   :authentication => :login,
Mail.defaults do
  delivery_method :smtp, { :address              => "10.1.1.217",
                           :port                 => 25,
                           :domain               => 'optimix.asia',
                           :user_name            => 'report',
                           :password             => "233Th338",
                           :authentication       => :login,
                           :enable_starttls_auto => true
                        }
end

Mail.deliver do
   from    'report@optimix.asia'
   to      'john.zhao@i-click.cn'
   subject 'Here is the image you wanted'
   body    'mail'
  
end