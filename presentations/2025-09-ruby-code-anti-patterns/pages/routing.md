---
layout: two-cols
class: problem-slide
---

# Q9

<div class="mx-2">
<h3>🐣<span class="text-xs text-gray-400 ml-2">config/routes.rb</span></h3>
<<< @/snippets/bad/routing.rb
</div>

::right::

<div class="mx-2 mt-24">
<ul class="text-gray-400">
  <li v-click="1">うーん、これって RESTful な設計？</li>
  <li v-click="2">Rails の resources 使えばもっとシンプルになりそう</li>
  <li v-click="3">collection と member の使い分けできてるかな？</li>
</ul>
</div>

---
layout: two-cols
class: approach
---

<h1>Q9<span class="text-sm text-gray-600 ml-4">ルーティングの設計</span></h1>

<div class="mx-2">
<h3>🐣<span class="text-xs text-gray-400 ml-2">config/routes.rb</span></h3>
<<< @/snippets/bad/routing.rb
</div>

::right::

<div class="mx-2 mt-14">

### 問題点

- RESTful な設計になっていない
- 非標準的なアクション名
- resources を活用していない

### 改善のポイント

- **RESTful 設計**で理解しやすい API
- **resources**で DRY なルーティング
- **標準的な慣習**に沿った設計
</div>

---
layout: two-cols
transition: slide-up
class: answer
---

<h1>Q9<span class="text-sm text-gray-600 ml-4">ルーティングの設計</span></h1>

<div class="mx-2">
<h3>🐣<span class="text-xs text-gray-400 ml-2">config/routes.rb</span></h3>
<<< @/snippets/bad/routing.rb
</div>

::right::

<div class="mx-2 mt-14">
<h3>✅<span class="text-xs text-gray-400 ml-2">config/routes.rb</span></h3>
<<< @/snippets/good/routing.rb
</div>

