require 'rubygems'
require 'rails'
class 	TestJob

	def run
		puts "i am running"
	end

end

Rails.queue.push(TestJob.new)