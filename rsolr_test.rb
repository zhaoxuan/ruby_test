require 'rubygems'
require 'rsolr'

solr     = RSolr.connect :url => 'http://192.168.5.85:8080/solr/core_1'
response = solr.get 'select', :params => {:q => '*:*'}

p response

response["response"]["docs"].each{|doc| puts doc }