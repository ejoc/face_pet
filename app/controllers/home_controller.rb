class HomeController < ApplicationController

	def index
		@pets = Pet.all.desc('_id').limit(8)
	end

end