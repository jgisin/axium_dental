class Facebook
  attr_reader :graph

  def initialize
   @oauth = Koala::Facebook::OAuth.new(ENV['FACEBOOK_ID'], ENV['FACEBOOK_SECRET'], '')
   @graph = Koala::Facebook::API.new(ENV['FACEBOOK_KEY'])
  end

  def get_posts
    @posts = @graph.get_connection('me', 'posts',{ fields: ['id', 'picture', 'message', 'link', 'name', 'description', "likes.summary(true)", "shares", "comments.summary(true)"]})
  end



end