class HomeController < ApplicationController
	respond_to :json

	def index
		respond_with Home.first
	end
end
