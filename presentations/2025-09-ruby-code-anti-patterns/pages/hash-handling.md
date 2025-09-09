---
layout: two-cols
class: problem-slide
---

# Q5

<div class="mx-2">
<h3>🐣<span class="text-xs text-gray-400 ml-2">app/services/user_service.rb</span></h3>
<<< @/snippets/bad/hash_handling.rb
</div>

::right::

<div class="mx-2 mt-24">
<ul class="text-gray-400">
  <li v-click="1"><code>!= nil</code> って書かなくても <code>truthy</code>/<code>falsy</code> でチェックできるのでは？</li>
  <li v-click="2">配列の要素が全部条件満たすかチェックするメソッドあったな</li>
  <li v-click="3"><code>all?</code>メソッド使えばスマートに書けそう</li>
</ul>
</div>

---
layout: two-cols
class: approach
---

<h1>Q5<span class="text-sm text-gray-600 ml-4">Hash の扱い</span></h1>

<div class="mx-2">
<h3>🐣<span class="text-xs text-gray-400 ml-2">app/services/user_service.rb</span></h3>
<<< @/snippets/bad/hash_handling.rb
</div>

::right::

<div class="mx-2 mt-14">

### 問題点

- `!= nil` は冗長
- 必要なキーの存在確認が不十分
- 個別に変数を定義している

### 改善のポイント

- **truthy/falsy**を活用したシンプルなチェック
- **`all?`メソッド**で配列の全要素をチェック
- **配列リテラル**（`%w`）を使った効率的な記述
</div>

---
layout: two-cols
transition: slide-up
class: answer
---

<h1>Q5<span class="text-sm text-gray-600 ml-4">Hash の扱い</span></h1>

<div class="mx-2">
<h3>🐣<span class="text-xs text-gray-400 ml-2">app/services/user_service.rb</span></h3>
<<< @/snippets/bad/hash_handling.rb
</div>

::right::

<div class="mx-2 mt-14">
<h3>✅<span class="text-xs text-gray-400 ml-2">app/services/user_service.rb</span></h3>
<<< @/snippets/good/hash_handling.rb
</div>
