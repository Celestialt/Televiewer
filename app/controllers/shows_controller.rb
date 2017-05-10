class ShowsController < ApplicationController
	def index
		@shows = Show.all
	end

	def new
		@show = Show.new
	end

	def create
		Show.create(show_params)
		redirect_to root_path
	end

	private

	def show_params
		params.require(:show).permit(:title, :genre, :year)
		
	end
end
