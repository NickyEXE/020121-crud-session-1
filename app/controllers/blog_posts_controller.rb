class BlogPostsController < ApplicationController
  before_action :set_blog_post, only: [:show, :edit, :update, :destroy]

  def index
    @blog_posts = BlogPost.all
  end

  def show
  end

  def new
    @blog_post = BlogPost.new
  end

  def create
    blog_post = BlogPost.create(blog_post_params)
    redirect_to blog_post
  end

  def edit

  end

  def update
    @blog_post.update(blog_post_params)
    redirect_to @blog_post
  end

  def destroy
    @blog_post.destroy
    redirect_to blog_posts_path
  end

  private

  def set_blog_post
    @blog_post = BlogPost.find(params[:id])
  end

  def blog_post_params
    params.require(:blog_post).permit(:title, :author, :outlet, :rating, :opinion)
  end

end
