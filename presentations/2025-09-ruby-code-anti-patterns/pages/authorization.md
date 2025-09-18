---
layout: two-cols
class: problem-slide
---

# Q7

<div class="mx-2">
<h3>🐣<span class="text-xs text-gray-400 ml-2">app/controllers/posts_controller.rb</span></h3>
<<< @/snippets/bad/authorization.rb
</div>

::right::

<div class="mx-2 mt-24" v-click>
<div class="text-gray-400">
  <p>えっと、認証チェックがない...誰でもアクセスできちゃう？</p>
  <p>他の人の投稿でも編集できちゃいそう、これヤバくない？</p>
  <p>`before_action`で認証と認可チェックしなきゃ</p>
</div>
</div>

<!--
7-8分のシンキングタイム
- 1-2分：個人でコードを読んでアクセス制御の問題を考える
- 4-5分：グループで認証・認可について共有・議論
- 1-2分：具体的な実装方法と実践的な対策について

議論のポイント：
1. 認証（Authentication）と認可（Authorization）の違い
2. 「他人の投稿を編集できる」具体的なリスク
3. before_actionによる一元的なセキュリティ管理
4. 所有者チェックの実装方法
5. 実際のWebサービスでの類似事例

進行のコツ：
- 「認証と認可の違いって分かる？」で基本概念を確認
- 「もし他人のSNS投稿を勝手に編集できたら？」で具体例を想像させる
- Rails経験者がいれば「before_action使ったことある？」で経験を聞く
- 「実際にこんな問題に遭遇したことは？」で実体験を共有
-->

---
layout: two-cols
class: approach
---

<h1>Q7<span class="text-sm text-gray-600 ml-4">認可の問題</span></h1>

<div class="mx-2">
<div class="relative">
<h3 v-click.hide="4" class="absolute">🐣<span class="text-xs text-gray-400 ml-2">app/controllers/posts_controller.rb</span></h3>
<h3 v-click="4">✅<span class="text-xs text-gray-400 ml-2">app/controllers/posts_controller.rb</span></h3>
</div>
````md magic-move
<<< @/snippets/bad/authorization.rb{all|3,7,11|7,11|all}
<<< @/snippets/good/authorization.rb
````
</div>

::right::

<div class="mx-2 mt-14">

### 問題点と改善ポイント

<div v-click="1">

<span class="text-red-700">**認証・認可のチェックがない**</span>  
→ before_actionで一元的にセキュリティ管理

</div>

<div v-click="2">

<span class="text-red-700">**他のユーザーの投稿も編集できてしまう**</span>  
→ 認可で所有者のみ編集可能に制限

</div>

<div v-click="3">

<span class="text-red-700">**セキュリティホールとなる**</span>  
→ 認証でログインユーザーのみアクセス許可

</div>
</div>

---
layout: two-cols
transition: slide-up
class: answer
---

<h1>Q7<span class="text-sm text-gray-600 ml-4">認可の問題</span></h1>

<div class="mx-2">
<h3>✅<span class="text-xs text-gray-400 ml-2">app/controllers/posts_controller.rb</span></h3>
<<< @/snippets/good/authorization.rb
</div>

::right::

<div class="mx-2 mt-14">
<h3>🐣<span class="text-xs text-gray-400 ml-2">app/controllers/posts_controller.rb</span></h3>
<<< @/snippets/bad/authorization.rb
</div>
