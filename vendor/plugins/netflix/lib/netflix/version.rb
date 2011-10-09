module Netflix::Version

	MAJOR = 0
	MINOR = 2
	TINY	= 0
		
	def self.to_s
		[MAJOR, MINOR, TINY].join('.')
	end

end
