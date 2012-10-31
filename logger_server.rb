require 'rubygems'
require 'ruby-debug'
require 'drb/drb'

URI="druby://localhost:8787"

class Logger

  # Logger 是被远程代理，客户端不会存在，所以用这句
  include DRb::DRbUndumped

  def initialize(n, fname)
    @name = n
    @filename = fname
  end

  def log(message)
    File.open(@filename, "a") do |f|
      f.puts("#{Time.now}: #{@name}: #{message}")
    end
  end

end

class LoggerFactory

  def initialize(bdir)
    @basedir = bdir
    @loggers = {}
  end

  def get_logger(name)
    if !@loggers.has_key? name
      # 保证文件名是合法的
      fname = name.gsub(/[.\/]/, "_").untaint
      @loggers[name] = Logger.new(name, @basedir + "/" + fname)
    end
    return @loggers[name]
  end

end
# 在执行之前你要手动创建一下dlog
FRONT_OBJECT=LoggerFactory.new("dlog")

DRb.start_service(URI, FRONT_OBJECT)
DRb.thread.join