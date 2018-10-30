class PagesController < ApplicationController
	def home
	end

	def show
		@users = Gossip.all
	end

	def user
		@id = Gossip.find(params[:id])
	end

	def bonjour
		@name = params[:name]
	end

	def create
		Gossip.create author: params[:author],content: params[:content]
  		redirect_to "/"
	end

	def team	
	end

	def contact	
	end

	def book
		@books = Gossip.all
	end

	def update
  		Gossip.find(params[:id]).update author: params[:author],content: params[:content]
  		redirect_to "/user/#{params[:id]}"
	end

	def destroy
  		Gossip.find(params[:id]).destroy
  		redirect_to "/user"
	end
	
end