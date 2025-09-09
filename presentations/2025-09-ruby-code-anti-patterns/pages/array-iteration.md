---
layout: two-cols
class: quiz
---

# Q2

<div class="mx-2">
<h3>🐣<span class="text-xs text-gray-400 ml-2">app/controllers/users_controller.rb</span></h3>
<<< @/snippets/bad/array_iteration.rb
</div>

::right::

<div class="mx-2 mt-24" v-click>
<div class="text-gray-400">
  <p>あれ、なんか C 言語っぽい書き方だな...</p>
  <p>配列変換するいいメソッドあったような</p>
  <p>Ruby なら&:記法でもっとスッキリ書けるはず</p>
</div>
</div>

<!--
6-7分のシンキングタイム
- 1-2分：個人でコードを読んで問題点を考える
- 3-4分：グループで問題点を共有・議論
- 1-2分：改善案について話し合う

議論のポイント：
1. なぜ手動ループが問題なのか
2. mapメソッドの利点（可読性、バグの少なさ）
3. Symbol to Proc（&:）記法の紹介と説明

進行のコツ：
- 「mapメソッド知ってる人いますか？」で知識レベルを確認
- 知らない人がいれば簡単に説明してから議論開始
- &:記法は「こんな書き方もあります」として最後に紹介
-->

---
layout: two-cols
class: approach
---

<h1>Q2<span class="text-sm text-gray-600 ml-4">配列の操作</span></h1>

<div class="mx-2">
<h3>🐣<span class="text-xs text-gray-400 ml-2">app/controllers/users_controller.rb</span></h3>
<<< @/snippets/bad/array_iteration.rb{all|3-5}
</div>

::right::

<div class="mx-2 mt-14">

### 問題点と改善ポイント

<div v-click="1">

<span class="text-red-700">**冗長で読みにくいコード**</span>  
→ `map`メソッドで簡潔に記述

</div>

<div v-click="2">

<span class="text-red-700">**Ruby らしくない書き方**</span>  
→ Symbol to Proc（`&:`）でさらにシンプルに

</div>
</div>

---
layout: two-cols
transition: slide-up
class: answer
---

<h1>Q2<span class="text-sm text-gray-600 ml-4">配列の操作</span></h1>

<div class="mx-2">
<h3>🐣<span class="text-xs text-gray-400 ml-2">app/controllers/users_controller.rb</span></h3>
<<< @/snippets/bad/array_iteration.rb
</div>

::right::

<div class="mx-2 mt-14">
<h3>✅<span class="text-xs text-gray-400 ml-2">app/controllers/users_controller.rb</span></h3>
<<< @/snippets/good/array_iteration.rb
</div>
