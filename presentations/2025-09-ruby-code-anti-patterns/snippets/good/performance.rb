class PostsController < ApplicationController
  def index
    @posts = Post.published.limit(20).includes(:user)
    @popular_posts = Rails.cache.fetch(
      'popular_posts', expires_in: 1.hour
    ) do
      Post.where('created_at > ?', 1.month.ago)
          .order(:view_count).limit(10)
    end

    # 非同期で処理
    ViewCountUpdateJob.perform_later(
      post_ids: @posts.pluck(:id)
    )
  end
end