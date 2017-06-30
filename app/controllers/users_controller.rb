class UsersController < ApplicationController
  def login
    @disable_foot = true
    @user = User.new
  end
end
