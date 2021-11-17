class BlogsController < ApplicationController
  def show
  end
  
  def index
  end

  def new
    @blog = Blog.new
  end
  
  def create
    blog = Blog.new
    blog.save
    redirect_to blogs_path
  end

  def edit
  end
  
  private
  def blog_params
    params.require(:blog).permit(:title, :cateogry, :body)
  end
end