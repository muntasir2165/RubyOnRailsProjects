module RecipesControllerHelper
	def sanitizeHTML(code)
		strip_tags(code)
	end
end
