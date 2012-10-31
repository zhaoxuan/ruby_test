require 'rubygems'
require 'ruby-debug'
require "soap/wsdlDriver"

  def savefile(path,content)
    http_pang = 'http://pang.grandsoft.com.cn:7021/Fileservice.asmx?WSDL'

    path    = 'bbs/tempfile/zhaoxuan_123'
    file_500mb = '/home/zx/workspace/ruby_test/500MB'
    file = '/home/zx/Pictures/zhaoxuan.png'
    
    content = File.read(file_500mb)
    driver = SOAP::WSDLDriverFactory.new(http_pang).create_rpc_driver
    ret = driver.SaveFileSim(:path=>path,:content=>content)

    ret.__xmlele[0][1]
  end

  savefile('','')

