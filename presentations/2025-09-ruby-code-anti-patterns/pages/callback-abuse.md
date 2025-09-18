---
layout: two-cols
class: problem-slide
---

# Q15

<div class="mx-2">
<h3>🐣<span class="text-xs text-gray-400 ml-2">app/models/post.rb</span></h3>
<<< @/snippets/bad/callback_abuse.rb
</div>

::right::

<div class="mx-2 mt-24">
<ul class="text-gray-400">
  <li v-click="1">記事更新のたびに5つの処理が走る...</li>
  <li v-click="2">typo修正で1000人にメール送信？</li>
  <li v-click="3">テスト実行でSNS投稿されちゃうよ</li>
</ul>
</div>

---
layout: two-cols
class: approach
---

<h1>Q15<span class="text-sm text-gray-600 ml-4">コールバックの濫用</span></h1>

<div class="mx-2">
<h3>🐣<span class="text-xs text-gray-400 ml-2">app/models/post.rb</span></h3>
<<< @/snippets/bad/callback_abuse.rb
</div>

::right::

<div class="mx-2 mt-14">

### 問題点

- 記事の小さな修正でも大量の副作用
- 外部サービス（メール、SNS）への依存
- テスト実行時に意図しない処理が走る

### 改善のポイント

- **最小限のコールバック**でモデルをシンプルに
- **公開処理**は明示的なサービスクラスで実行
- **バックグラウンド処理**で重い処理を分離

</div>

---
layout: two-cols
transition: slide-up
class: answer
---

<h1>Q15<span class="text-sm text-gray-600 ml-4">コールバックの濫用</span></h1>

<div class="mx-2">
<h3>🐣<span class="text-xs text-gray-400 ml-2">app/models/post.rb</span></h3>
<<< @/snippets/bad/callback_abuse.rb
</div>

::right::

<div class="mx-2 mt-14">
<h3>✅<span class="text-xs text-gray-400 ml-2">app/models/post.rb & app/services/post_publish_service.rb</span></h3>
<<< @/snippets/good/callback_abuse.rb
</div>