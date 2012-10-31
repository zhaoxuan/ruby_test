require 'logger'

log = Logger.new('logger.log')
log.level = Logger::DEBUG

begin
  a = "1"
  raise RuntimeError

rescue => err
  log.fatal("Caught exception; exiting #{a}")
  log.fatal(err)
end