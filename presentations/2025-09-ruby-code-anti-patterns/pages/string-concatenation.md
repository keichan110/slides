---
layout: two-cols
class: quiz
---

# Q2

<div class="mx-2">
<h3>🐣<span class="text-xs text-gray-400 ml-2">app/models/user.rb</span></h3>
<<< @/snippets/bad/string_concatenation.rb
</div>

::right::

<div class="mx-2 mt-24">
<ul class="text-gray-400">
  <li v-click="1">うーん、+だらけでちょっと読みづらい...</li>
  <li v-click="2">わざわざ文字列に変換してるのか</li>
  <li v-click="3">Ruby の文字列補間使えばスッキリしそう</li>
</ul>
</div>

---
layout: two-cols
class: approach
---

<h1>Q2<span class="text-sm text-gray-600 ml-4">文字列の結合</span></h1>

<div class="mx-2">
<h3>🐣<span class="text-xs text-gray-400 ml-2">app/models/user.rb</span></h3>
<<< @/snippets/bad/string_concatenation.rb
</div>

::right::

<div class="mx-2 mt-14">

### 問題点

- 文字列結合が非効率的
- 可読性が低い
- 型変換が必要

### 改善のポイント

- **文字列補間**（interpolation）を使用する
- **自動型変換**でコードをシンプルに
- **パフォーマンス**も向上
</div>

---
layout: two-cols
transition: slide-up
class: answer
---

<h1>Q2<span class="text-sm text-gray-600 ml-4">文字列の結合</span></h1>

<div class="mx-2">
<h3>🐣<span class="text-xs text-gray-400 ml-2">app/models/user.rb</span></h3>
<<< @/snippets/bad/string_concatenation.rb
</div>

::right::

<div class="mx-2 mt-14">
<h3>✅<span class="text-xs text-gray-400 ml-2">app/models/user.rb</span></h3>
<<< @/snippets/good/string_concatenation.rb
</div>