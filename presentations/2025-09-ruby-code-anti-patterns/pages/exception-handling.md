---
layout: two-cols
class: problem-slide
---

# Q12

<div class="mx-2">
<h3>🐣<span class="text-xs text-gray-400 ml-2">app/models/user.rb</span></h3>
<<< @/snippets/bad/exception_handling.rb
</div>

::right::

<div class="mx-2 mt-24">
<ul class="text-gray-400">
  <li v-click="1">あれ、rescue でなんでも捕まえてるな...</li>
  <li v-click="2">エラーの原因がわからなくなってしまう</li>
  <li v-click="3">find_by とか使えばそもそも例外出ないのに</li>
</ul>
</div>

---
layout: two-cols
class: approach
---

<h1>Q12<span class="text-sm text-gray-600 ml-4">例外処理の問題</span></h1>

<div class="mx-2">
<h3>🐣<span class="text-xs text-gray-400 ml-2">app/models/user.rb</span></h3>
<<< @/snippets/bad/exception_handling.rb
</div>

::right::

<div class="mx-2 mt-14">

### 問題点

- 全ての例外を握りつぶしている
- どんなエラーが起きたか分からない
- 不要な`begin/rescue`

### 改善のポイント

- **適切なメソッド選択**で例外を回避
- **特定の例外**のみをキャッチ
- **エラーハンドリング**を明確に
</div>

---
layout: two-cols
transition: slide-up
class: answer
---

<h1>Q12<span class="text-sm text-gray-600 ml-4">例外処理の問題</span></h1>

<div class="mx-2">
<h3>🐣<span class="text-xs text-gray-400 ml-2">app/models/user.rb</span></h3>
<<< @/snippets/bad/exception_handling.rb
</div>

::right::

<div class="mx-2 mt-14">
<h3>✅<span class="text-xs text-gray-400 ml-2">app/models/user.rb</span></h3>
<<< @/snippets/good/exception_handling.rb
</div>

