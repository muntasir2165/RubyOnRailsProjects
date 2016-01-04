class Recipe
	include HTTParty

	# key_value = ENV['FOOD2FORK_KEY']
	key_value = '97bc7c8e6af0c2d69a78aba287138a58'
	# key_value = ENV['FOOD2FORK_KEY'] || '97bc7c8e6af0c2d69a78aba287138a58'
	# hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'
	hostport = 'www.food2fork.com'
	base_uri "http://#{hostport}/api"
	default_params key: key_value
	format :json

	def self.for (keyword)
		get("/search", query: {q: keyword})["recipes"]
	end
end