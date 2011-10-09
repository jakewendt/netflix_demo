class Netflix::RequestToken < OAuth::RequestToken

#	def authorize_url(options={})
#		super({
#			"application_name"   => Netflix.application_name,
#			"oauth_consumer_key" => Netflix.consumer_token
#		}.merge(options))
#	end


#	def get_access_token
#		it'd be nice to be able to cast this as a Netflix::AccessToken
#	end

end
