class Netflix::Title < Netflix::Catalog
#
#	People and Title ???
#	Plural or singular ???
#
	def self.search(params={})
		Netflix.search({:url => '/catalog/titles'}.merge(params))
	end
end
