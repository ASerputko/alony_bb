class HomeController < ApplicationController
	respond_to :json, :xml

	def index
		respond_with Home.first
	end
end
