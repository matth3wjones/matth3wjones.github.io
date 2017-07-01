class UsersController < ApplicationController
  protect_from_forgery
  before_action :authenticate_user!

  def show
    puts "this is the current user: #{current_user}"
    @user = User.find(params[:id])
    @post = Post.new
  end

end
