class UsersController < ApplicationController
  def index
    @users = 
      User.includes(:posts)
          .select('users.*, 
                   COUNT(posts.id) as posts_count')
          .joins('LEFT JOIN posts 
                  ON posts.user_id = users.id')
          .group('users.id')
  end
end
