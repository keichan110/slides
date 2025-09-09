---
layout: two-cols
class: problem-slide
---

# Q19

<div class="mx-2">
<h3>🐣<span class="text-xs text-gray-400 ml-2">app/controllers/posts_controller.rb</span></h3>
<<< @/snippets/bad/performance.rb
</div>

::right::

<div class="mx-2 mt-14">
<ul class="text-gray-400">
  <li v-click="1">`Post.all`って...100 万件あったらタイムアウトしちゃうよ</li>
  <li v-click="2">さらにループで 1 件ずつ更新って...N+1 クエリで重すぎる</li>
</ul>
</div>

---
layout: two-cols
class: approach
---

<h1>Q19<span class="text-sm text-gray-600 ml-4">パフォーマンスの問題</span></h1>

<div class="mx-2">
<h3>🐣<span class="text-xs text-gray-400 ml-2">app/controllers/posts_controller.rb</span></h3>
<<< @/snippets/bad/performance.rb
</div>

::right::

<div class="mx-2 mt-14">

### 問題点

- 全ての投稿を取得（`Post.all`）
- 各投稿のビューカウントを個別更新（N+1）
- 表示処理で更新処理を実行

### 改善のポイント

- **ページネーション**でデータ量制限
- **キャッシュ**で重いクエリの結果を保存
- **非同期処理**でレスポンス速度向上
</div>

---
layout: two-cols
transition: slide-up
class: answer
---

<h1>Q19<span class="text-sm text-gray-600 ml-4">パフォーマンスの問題</span></h1>

<div class="mx-2">
<h3>🐣<span class="text-xs text-gray-400 ml-2">app/controllers/posts_controller.rb</span></h3>
<<< @/snippets/bad/performance.rb
</div>

::right::

<div class="mx-2 mt-14">
<h3>✅<span class="text-xs text-gray-400 ml-2">app/controllers/posts_controller.rb</span></h3>
<<< @/snippets/good/performance.rb
</div>
class PostsController < ApplicationController
  def index
    @posts = Post.all  # 全データ取得
    @popular_posts = Post.where(
      'created_at > ?', 1.month.ago
    ).order(:view_count).limit(10)

    @posts.each do |post|
      post.increment!(:view_count)  # N+1
    end
  end
end
```

**問題:**

- 100 万件の投稿があったらタイムアウト
- ユーザー体験が悪化

::right::

## ✅ 改善後

```ruby
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
```

**改善:**

- 高速レスポンス
- スケーラブルな設計