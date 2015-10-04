class BlogsController < ApplicationController
	before_action :find_blog, only: [:show, :edit, :update, :destroy]

	def index
		@blogs = Blog.all.order("created_at desc").paginate(page: params[:page], per_page: 6)
	end

	def new
		@blog = Blog.new
	end

	def create
		@blog = Blog.new blog_params

		if @blog.save
			redirect_to @blog, notice: "Hell Yeah Rahul! Article Published Successfully"
		else
			render 'new', notice: "Oh no! Rahul! I was unable to save your post"
		end
	end

	def show
	end

	def edit
	end

	def update
		if @blog.update blog_params
			redirect_to @blog, notice: "Yabadabadoo! Article Updated!"
		else
			render 'edit'
		end
	end

	def destroy
		@blog.destroy
		redirect_to blogs_path
	end

	private

	def blog_params
		params.require(:blog).permit(:title, :content, :slug)
	end

	def find_blog
		@blog = Blog.friendly.find(params[:id])
	end

end
