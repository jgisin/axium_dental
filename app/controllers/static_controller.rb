class StaticController < ApplicationController

  def index
    facebook = Facebook.new
    @posts = facebook.get_posts[0..2]
    puts @posts
  end
end
