---
layout: two-cols
class: quiz
---

# Q14

<div class="mx-2">
<h3>🐣<span class="text-xs text-gray-400 ml-2">app/models/user.rb</span></h3>
<<< @/snippets/bad/scope-abuse.rb
</div>

::right::

<div class="mx-2 mt-24">
<ul class="text-gray-400">
  <li v-click="1">johns スコープって John さんだけ？</li>
  <li v-click="2">他の名前検索したいときどうするんだろ</li>
  <li v-click="3">パラメータ使えばもっと汎用的になりそう</li>
</ul>
</div>

---
layout: two-cols
class: approach
---

<h1>Q14<span class="text-sm text-gray-600 ml-4">スコープの乱用</span></h1>

<div class="mx-2">
<h3>🐣<span class="text-xs text-gray-400 ml-2">app/models/user.rb</span></h3>
<<< @/snippets/bad/scope-abuse.rb
</div>

::right::

<div class="mx-2 mt-14">

### 問題点

- 特定すぎるスコープ（`johns`など）
- 再利用性が低い
- データベース依存のロジック

### 改善のポイント

- **パラメータ化**で汎用性向上
- **再利用可能**なスコープ設計
- **ビジネスロジック**と DB ロジックの分離

</div>

---
layout: two-cols
transition: slide-up
class: answer
---

<h1>Q14<span class="text-sm text-gray-600 ml-4">スコープの乱用</span></h1>

<div class="mx-2">
<h3>🐣<span class="text-xs text-gray-400 ml-2">app/models/user.rb</span></h3>
<<< @/snippets/bad/scope-abuse.rb
</div>

::right::

<div class="mx-2 mt-14">
<h3>✅<span class="text-xs text-gray-400 ml-2">app/models/user.rb</span></h3>
<<< @/snippets/good/scope-abuse.rb
</div>
