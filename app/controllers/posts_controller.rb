class PostsController < ApplicationController
  def new
  	@post=Post.new
  end
  def create
  	@post = Post.new(post_param)
  	@post.save
  	redirect_to posts_path

  end
  def show
  	@post = Post.new(post_param)
  end
  def index
  	@posts = Post.all
  end


  private
  def post_param

  	params.require(:post).permit(:name,:text)
  end
end
