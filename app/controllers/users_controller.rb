class UsersController < ApplicationController
  protect_from_forgery
  before_action :authenticate_user!

  def show
    puts "this is the current user: #{current_user.username}"
    @user = User.find(params[:id])
    if current_user == @user
      @post = Post.new
    else
      redirect_to '/posts'
    end
  end

end
