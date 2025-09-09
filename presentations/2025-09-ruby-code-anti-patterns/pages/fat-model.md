---
layout: two-cols
class: quiz
---

# Q13

<div class="mx-2">
<h3>🐣<span class="text-xs text-gray-400 ml-2">app/models/user.rb</span></h3>
<<< @/snippets/bad/fat_model.rb
</div>

::right::

<div class="mx-2 mt-24">
<ul class="text-gray-400">
  <li v-click="1">このUserクラス、いろんな処理が混在してる...</li>
  <li v-click="2">電話番号の整形処理がここにある必要ある？</li>
  <li v-click="3">メール送信も同期的に実行してるし...</li>
</ul>
</div>

---
layout: two-cols
class: approach
---

<h1>Q13<span class="text-sm text-gray-600 ml-4">クラス設計の問題</span></h1>

<div class="mx-2">
<h3>🐣<span class="text-xs text-gray-400 ml-2">app/models/user.rb</span></h3>
<<< @/snippets/bad/fat_model.rb
</div>

::right::

<div class="mx-2 mt-14">

### 問題点

- ファットモデル（1 つのクラスに責務が集中）
- 関心の分離ができていない
- テストと保守が困難

### 改善のポイント

- **関心の分離**で責務を明確に
- **専用クラス**で再利用性向上
- **モデル**はデータとビジネスロジックに集中
</div>

---
layout: two-cols
class: answer
---

<h1>Q13<span class="text-sm text-gray-600 ml-4">クラス設計の問題</span></h1>

<div class="mx-2">
<h3>🐣<span class="text-xs text-gray-400 ml-2">app/models/user.rb</span></h3>
<<< @/snippets/bad/fat_model.rb
</div>

::right::

<div class="mx-2 mt-14">
<h3>✅<span class="text-xs text-gray-400 ml-2">app/models/user.rb</span></h3>
<<< @/snippets/good/fat_model.rb
</div>

---
layout: two-cols
transition: slide-up
class: answer
---

<h1>Q13<span class="text-sm text-gray-600 ml-4">クラス設計の問題</span></h1>

<div class="mx-2">
<h3>🐣<span class="text-xs text-gray-400 ml-2">app/models/user.rb</span></h3>
<<< @/snippets/bad/fat_model.rb
</div>

::right::

<div class="mx-2 mt-14">
<h3 class="mt-4">✅<span class="text-xs text-gray-400 ml-2">lib/phone_formatter.rb</span></h3>
<<< @/snippets/good/fat_model_formatter.rb
</div>
