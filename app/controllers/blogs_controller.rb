class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]

  respond_to :html, :js

  def index
    @blogs = Blog.all
    respond_with(@blogs)
  end

  def show
    redirect_to root_url
  end

  def new
    @blog = Blog.new
    respond_with(@blog)
  end

  def edit
  end

  def create
    @blog = Blog.new(blog_params)
    @blog.save
    redirect_to root_url
  end

  def update
    @blog.update(blog_params)
    respond_with(@blog)
  end

  def destroy
    @blog.destroy
    respond_with(@blog)
  end

  private
    def set_blog
      @blog = Blog.find(params[:id])
    end

    def blog_params
      params.require(:blog).permit(:title, :t_color, :t_font, :t_font_size, :body, :b_color, :b_font, :b_font_size, :background_color)
    end
end
