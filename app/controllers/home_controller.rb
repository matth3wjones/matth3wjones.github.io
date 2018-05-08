class HomeController < ApplicationController
  def index
    @disable_nav = true
    @disable_foot = true
  end

  def resume
    @disable_foot = true
    @disable_resume = true
  end

  def profile
    puts "Mr. Templeton"
  end
end
