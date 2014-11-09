class BlogpostsController < ApplicationController

	def index
		@blogposts = Blogpost.all
	end

	def show
		@blogpost = Blogpost.find(params[:id])
	end

	def new
		@blogpost = Blogpost.new
	end

	def create
		@blogpost = Blogpost.new(params.require(:blogpost).permit(:title, :camera, :desc))
		if @blogpost.save
			redirect_to blogposts_path
		else
			render 'new'
		end
	end

	def edit
		@blogpost = Blogpost.find(params[:id])
	end

	def update
		@blogpost = Blogpost.find(params[:id])
		if @blogpost.update_attributes(params.require(:blogpost).permit(:title, :camera, :desc))
			redirect_to blogpost_path
		else
			render 'edit'
		end
	end

	def destroy
		@blogpost = Blogpost.find(params[:id])
		@blogpost.destroy
		redirect_to blogposts_path
	end

end
