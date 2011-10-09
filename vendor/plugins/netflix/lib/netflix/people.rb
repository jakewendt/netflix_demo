class Netflix::People < Netflix::Catalog
	def self.search(params={})
		Netflix.search({:url => '/catalog/people'}.merge(params))
	end
end
