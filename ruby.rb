require 'rubygems'
require 'ruby-debug'
require 'delegate'
require 'mogilefs'

hosts = %w[192.168.5.83:7001]

# mg = MogileFS::MogileFS.new(:domain => 'image', :hosts => hosts)
# debugger
# p '123'

class Test
  @k = 'zhao'
  def initialize
    @p = '123'
  end

  def self.f1
    p @k
  end

  def f2
    @g = 'xuan'
    p @k
  end
end

class Best < Test
  def f1
    p @p
    p @k
  end
end

a = Test.new
debugger
Test.f1
a.f2

b = Best.new