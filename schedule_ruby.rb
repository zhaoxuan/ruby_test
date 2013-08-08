require 'rubygems'
require 'rufus/scheduler'

scheduler = Rufus::Scheduler.start_new

scheduler.every '5s' do
  Mysql.get(data)
  #2014,4,2 stop capaign 19738123
  check_mysql
  if time_match
    stop_campaign
  end
end
scheduler.join
