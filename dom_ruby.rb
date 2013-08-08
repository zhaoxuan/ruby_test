require 'rubygems'
require 'open-uri'
require 'logger'
require 'net/http'
require 'debugger'

while true
  url = 'http://www.qiushibaike.com/new3/inspect/ticket'
  # io = open('http://www.qiushibaike.com/new3/fetch')
  # logger    = Logger.new("log/development.log")

  begin
    response = Net::HTTP.get('www.qiushibaike.com', '/new3/fetch')
    array = JSON.parse(response)

    array.each do |a|
      user_id = a['id']
      vote = "/new3/inspect/#{user_id}/-5"
      Net::HTTP.get('www.qiushibaike.com', vote)
      
      # p open("http://www.qiushibaike.com#{vote}").status
      # sleep 0.1
    end
  rescue Exception => e
    sleep 3
  ensure
    next
  end
  
end
