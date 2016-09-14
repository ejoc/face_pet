class SearchesController < ApplicationController

	def index
		@pets = search_params.present? ? Pet.search(params[:search]).page(params[:page].to_i).per(15) : Pet.page(params[:page].to_i).per(15)
	end

	private
		def search_params
      params[:search] || {}
    end

end