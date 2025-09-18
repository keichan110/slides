# app/models/post.rb
class Post < ApplicationRecord
  after_update :update_sitemap_xml
  after_update :notify_subscribers_by_email    # 1000人に送信...
  after_update :post_to_social_media
  after_update :clear_cloudflare_cache
  after_update :update_search_index
  
  # タイトルのtypoを1文字直しただけなのに...
end