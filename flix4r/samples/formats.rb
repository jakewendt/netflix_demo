require File.dirname(__FILE__) + '/../flix4r.rb'

list = File.new(File.dirname(__FILE__) + '/formats.xml', 'w')
list.puts NetFlix::Request.new(:url => 'http://api.netflix.com/catalog/titles/movies/60031755/format_availability')
