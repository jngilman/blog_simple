class PostsController < ApplicationController
  
  def index
  end

  def create
  	@post = Post.new(post_params)
  	if @post.save
  		redirect_to @post
	else
		render 'new'
  		
  	end
  end
  
  def new
  	@post = Post.new # this communicates with db through routes, posts#new
  end

  def show
  	@post = Post.find(params[:id])
  end

  private
  def post_params
  	params.require(:post).permit(:title, :body)
  end


end
