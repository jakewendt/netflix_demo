require File.dirname(__FILE__) + '/../flix4r.rb'
#require File.dirname(__FILE__) + '/../lib/net_flix.rb'

# Writes the NetFlix response to the file catalog.xml

catalog = File.new('catalog.xml', 'w')
catalog.puts NetFlix::API::Catalog::Titles.list
