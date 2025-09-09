---
layout: two-cols
class: problem-slide
---

# Q4

<div class="mx-2">
<h3>🐣<span class="text-xs text-gray-400 ml-2">app/views/users/index.html.erb</span></h3>
<<< @/snippets/bad/n_plus_one.erb
</div>

::right::

<div class="mx-2 mt-24">
<div class="text-gray-400" v-click>
  <p>これってユーザー分だけクエリ実行される？</p>
  <p>一括で取得する方法ありそうだけど...</p>
</div>
</div>

<!--
8-9分のシンキングタイム
  - 1-2分：個人でコードを読んでパフォーマンス問題を考える
  - 5-6分：グループでN+1問題について共有・議論
  - 1-2分：具体的な解決方法と実践的な対策について

議論のポイント：
1. N+1問題とは何か（概念の理解）
2. 「100人で101回」の具体的インパクト
3. データベース処理の負荷とパフォーマンスへの影響
4. 解決策：includes、eager loading、counter_cache等
5. 実際の開発現場での対策方法

進行のコツ：
- 「N+1問題って聞いたことありますか？」で知識レベルを確認
- 「100人のユーザーがいたら何回クエリが実行される？」で具体的に実感させる
- Rails経験者がいれば「includesって知ってる？」で解決策を引き出す
- 時間があれば「実際にこんな問題に遭遇したことある？」で体験談を共有
-->

---
layout: two-cols
class: approach
---

<h1>Q4<span class="text-sm text-gray-600 ml-4">N+1 クエリ問題</span></h1>

<div class="mx-2">
<h3>🐣<span class="text-xs text-gray-400 ml-2">app/views/users/index.html.erb</span></h3>
<<< @/snippets/bad/n_plus_one.erb{all|3|1,3,5}
</div>

::right::

<div class="mx-2 mt-14">

### 問題点と改善ポイント

<div v-click="1">

<span class="text-red-700">**各ユーザーごとに投稿数を取得するクエリが実行される**</span>  
→ 事前読み込みで関連データを一括取得

</div>

<div v-click="2">

<span class="text-red-700">**ユーザーが 100 人いたら 101 回のクエリ**</span>  
→ 集約クエリでデータベース側で計算

</div>

<div v-click="3">

<span class="text-red-700">**パフォーマンスが大幅に悪化**</span>  
→ SQL の最適化でアプリケーション高速化

</div>
</div>

---
layout: two-cols
transition: slide-up
class: answer
---

<h1>Q4<span class="text-sm text-gray-600 ml-4">N+1 クエリ問題</span></h1>

<div class="mx-2">
<h3>🐣<span class="text-xs text-gray-400 ml-2">app/view/users/index.html.erb</span></h3>
<<< @/snippets/bad/n_plus_one.erb
</div>

::right::

<div class="mx-2 mt-14">
<h3>✅<span class="text-xs text-gray-400 ml-2">app/view/users/index.html.erb</span></h3>
<<< @/snippets/good/n_plus_one.erb

<h3><span class="text-xs text-gray-400 ml-2">app/controller/users_controller.rb</span></h3>
<<< @/snippets/good/n_plus_one.rb
</div>
