# 最小限のコールバック
class Post < ApplicationRecord
  after_update :touch_updated_at, if: :content_changed?
end

# 明示的な公開処理
class PostPublishService
  def self.publish(post)
    post.update!(published: true, published_at: Time.current)
    
    # 非同期でバックグラウンド処理
    SitemapUpdater.perform_async
    SubscriberNotifier.perform_async(post.id)
    SocialMediaPoster.perform_async(post.id)
    CacheInvalidator.perform_async(post.id)
  end
end

# 使用例（コントローラで）
# PostPublishService.publish(@post) if params[:publish]