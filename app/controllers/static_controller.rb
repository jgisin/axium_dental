class StaticController < ApplicationController

  def index
    facebook = Facebook.new
    @posts = facebook.get_posts[0..2]
    puts @posts
  end

  def products

  end

  def dtg
  end

  def education
  end

  def information
  end

  def contact
  end
end
