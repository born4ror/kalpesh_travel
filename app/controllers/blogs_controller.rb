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
    @blog = current_user.blogs.new
    respond_with(@blog)
  end

  def edit
  end

  def create
    respond_to do |format|
      @blog = current_user.blogs.new(blog_params)
      if @blog.save
        format.js { render :template => "visitors/index.html.erb", :layout => false, :locals => {:@blog =>current_user.blogs.all } }
      else
        format.js { render :template => "blogs/new.js.erb", :layout => false }
      end
    end
  end

  def update
    respond_to do |format|
      if @blog.update(blog_params)
        format.js { render :template => "visitors/index.html.erb", :layout => false, :locals => {:@blog =>current_user.blogs.all } }
      else
        format.js { render :template => "blogs/edit.js.erb", :layout => false }
      end
    end
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
