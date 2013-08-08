#encoding: utf-8
require 'rubygems'
require 'active_record'
require 'ruby-debug'
require File.expand_path("../data_conf", __FILE__)

ActiveRecord::Base.establish_connection(  
  :adapter => "mysql",  
  :host => "localhost",  
  :database => "offline_model",
  :username => "root",
  :password => "123456",
  :encoding => 'utf8'
)

class BidingData < ActiveRecord::Base  
end