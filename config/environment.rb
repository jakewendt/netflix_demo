# Be sure to restart your server when you modify this file

ENV['RAILS_ENV'] ||= 'production'

# Specifies gem version of Rails to use when vendor/rails is not present
#RAILS_GEM_VERSION = '2.2.2' unless defined? RAILS_GEM_VERSION
RAILS_GEM_VERSION = '2.3.14' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|

	config.gem "xml-simple", :lib => 'xmlsimple'
	config.gem "oauth"
	config.gem "ruby-hmac", :lib => "hmac-sha1"
	config.gem "rack", :version => "=1.1.2"

  config.time_zone = 'UTC'

  config.action_controller.session = {
    :session_key => '_netflix_session',
    :secret      => 'b78f9a6a6cc508ce27fcf394325caded67ab55559689e28f5c5f41f4303babe7b0fe142175d19e82c624d37bde3c0a0230c2dbc617576446e4682ab1701eaf7f'
  }

end
