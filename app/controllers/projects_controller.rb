class ProjectsController < ApplicationController
	respond_to :json, :xml

	def index
		respond_with Project.all
	end

	def show
		respond_with Project.find(params[:id])
	end
end
