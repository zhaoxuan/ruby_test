require 'rubygems'
require 'debugger'

class MessageColler
  instance_methods.each do |meth|
    undef_method meth unless meth =~ /^(__|inspect)/
  end

  def messages
    @messages ||= []
  end

  def method_missing(sym, *args)
    messages << [sym, args]
    self
  end
end

class Recorder
  def play_for(obj)
    @message_collector.messages.inject(obj) do |result, message|
      result.send message.first, *message.last
    end
  end

  def record
    @message_collector ||= MessageColler.new
  end

  def to_s
    @message_collector.message.inject([]) do |result, message|
      result << "#{message.first}(args: #{message.last.inject})"
    end
  end

end

recorder = Recorder.new

recorder.record.start("lrmmmm")
recorder.record.stop("lrmmmm")
# recorder.play_for(CommandCenter.new)