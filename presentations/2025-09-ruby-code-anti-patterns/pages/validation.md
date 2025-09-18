---
layout: two-cols
class: problem-slide
---

# Q8

<div class="mx-2">
<h3>🐣<span class="text-xs text-gray-400 ml-2">app/models/user.rb</span></h3>
<<< @/snippets/bad/validation.rb
</div>

::right::

<div class="mx-2 mt-24">
<ul class="text-gray-400">
  <li v-click="1">Rails のバリデーション使わないで独自実装？</li>
  <li v-click="2">@が入ってるだけでメール判定はゆるすぎるかも</li>
  <li v-click="3">save メソッドを独自で作る必要あるかな？</li>
</ul>
</div>

---
layout: two-cols
class: approach
---

<h1>Q8<span class="text-sm text-gray-600 ml-4">バリデーションの問題</span></h1>

<div class="mx-2">
<h3>🐣<span class="text-xs text-gray-400 ml-2">app/models/user.rb</span></h3>
<<< @/snippets/bad/validation.rb
</div>

::right::

<div class="mx-2 mt-14">

### 問題点

- Rails の標準的なバリデーション機能を使っていない
- 独自の save メソッドを作成している
- メール形式のチェックが不十分

### 改善のポイント

- **Rails 標準バリデーション**を活用
- **正規表現**で正確なメール形式チェック
- **コールバック**で自動的な前処理
</div>

---
layout: two-cols
transition: slide-up
class: answer
---

<h1>Q8<span class="text-sm text-gray-600 ml-4">バリデーションの問題</span></h1>

<div class="mx-2">
<h3>🐣<span class="text-xs text-gray-400 ml-2">app/models/user.rb</span></h3>
<<< @/snippets/bad/validation.rb
</div>

::right::

<div class="mx-2 mt-14">
<h3>✅<span class="text-xs text-gray-400 ml-2">app/models/user.rb</span></h3>
<<< @/snippets/good/validation.rb
</div>
