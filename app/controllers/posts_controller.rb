class PostsController < ApplicationController
  def index
    @posts = Post.all
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
  end

  def create
    puts "yo yo yo yo"
    p params
    puts "hiiiiiiiiii"
    p post_params
    puts "this is the current user: #{current_user.username}"
    fart = Post.new(post_params)
    fart.user_id = current_user.id
    fart.save!
    redirect_to root
  end

  private
    def post_params
      params.require(:post).permit(:title, :description, :image)
    end
end
