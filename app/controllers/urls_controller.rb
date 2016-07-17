class UrlsController < ApplicationController

	def index
		@url = Url.new
		if params[:url]
			@url_created = Url.find(params[:url])
		end
	end

	def show
		@url = Url.find(params[:id])
		redirect_to @url.link
	end

	def create
		@url = Url.new(urls_params)
		@url.save 
		redirect_to root_path(url: @url.id)
	end

	private

	def urls_params
		params.require(:url).permit(:link)
	end
end
