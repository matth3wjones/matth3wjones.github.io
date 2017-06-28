class PostsController < ApplicationController
  def index
    @posts = Post.all
    @post = Post.new
  end

  def create
    puts post_params
    Post.create(post_params)
    @post = Post.new
    @posts = Post.all
    render action: "index"
  end

  private
    def post_params
      params.require(:post).permit(:title, :author, :description)
    end
end
