class PostsController < ApplicationController
  def index
    @posts = Post.all
    @popular_posts = Post.where('created_at > ?', 1.month.ago)
                        .order(:view_count)
                        .limit(10)

    @posts.each do |post|
      post.increment!(:view_count)
    end
  end
end