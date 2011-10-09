def now_i_will(comment)
  yield if block_given?
end

this_dir = File.dirname(__FILE__)

now_i_will 'load dependencies' do

  require 'rubygems'
  require 'activesupport'
  require 'open-uri'
  require 'yaml'
  require 'hmac-sha1'
  require 'json'
  require 'net/http'
  require 'ftools'
  require 'nokogiri'
  require this_dir + '/lib/valuable.rb'
end

now_i_will 'add const_missing functionality' do
  lib = this_dir + '/lib'
  builders = this_dir + '/lib/net_flix/builders'

  ActiveSupport::Dependencies.load_paths << lib
  ActiveSupport::Dependencies.load_paths << builders 
end
