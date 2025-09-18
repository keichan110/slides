---
layout: two-cols
class: quiz
---

# Q5

<div class="mx-2">
<h3>🐣<span class="text-xs text-gray-400 ml-2">app/controllers/users_controller.rb</span></h3>
<<< @/snippets/bad/controller_responsibility.rb
</div>

::right::

<div class="mx-2 mt-24" v-click>
<div class="text-gray-400">
  <p>コントローラーでビジネスロジック書いてる？</p>
  <p>params 直接使うのって危険じゃなかった？</p>
  <p>バリデーションもコントローラーでやってるのか...</p>
</div>
</div>

<!--
9-10分のシンキングタイム
- 2分：個人でコードを読んで複数の問題点を整理
- 6-7分：グループでMVCアーキテクチャと責務分離について議論
- 1-2分：具体的なリファクタリング手順と実践的な対策

議論のポイント：
1. MVCパターンにおける各層の役割とは？
2. なぜコントローラーにビジネスロジックを書いてはダメなのか？
3. バリデーションはどこで行うべきか？
4. Strong Parametersの重要性（Q3の復習）
5. 実際の開発現場での責務分離の実践方法

進行のコツ：
- 「MVCパターンって何の略か知ってる？」で基本概念を確認
- 「コントローラーの役割って何だと思う？」で議論を開始
- 「Fat Controller vs Fat Model、どっちがマシ？」で深い議論に
- 時間があれば「Serviceオブジェクトという考え方もある」で発展的議論
-->

---
layout: two-cols
class: approach
---

<h1>Q5<span class="text-sm text-gray-600 ml-4">コントローラーの責務</span></h1>

<div class="mx-2">
<div class="relative">
<h3 v-click.hide="5" class="absolute">🐣<span class="text-xs text-gray-400 ml-2">app/controllers/users_controller.rb</span></h3>
<h3 v-click="5" v-click.hide="6" class="absolute">✅<span class="text-xs text-gray-400 ml-2">app/controllers/users_controller.rb</span></h3>
<h3 v-click="6">✅<span class="text-xs text-gray-400 ml-2">app/models/user.rb</span></h3>
</div>
````md magic-move
<<< @/snippets/bad/controller_responsibility.rb{all|4,5|7-12|3|all}
<<< @/snippets/good/users_controller.rb
<<< @/snippets/good/controller_responsibility_model.rb
````

</div>

::right::

<div class="mx-2 mt-14">

### 問題点と改善ポイント

<div v-click="1">

<span class="text-red-700">**コントローラーにビジネスロジックが混在**</span>  
→ MVC アーキテクチャを正しく適用

</div>

<div v-click="2">

<span class="text-red-700">**バリデーションをコントローラーで実装**</span>  
→ モデルでバリデーションとコールバック処理

</div>

<div v-click="3">

<span class="text-red-700">**Strong Parameters を使っていない**</span>  
→ Strong Parametersでセキュリティ強化

</div>
</div>

---
layout: two-cols
class: answer
---

<h1>Q5<span class="text-sm text-gray-600 ml-4">コントローラーの責務</span></h1>

<div class="mx-2">
<h3>✅<span class="text-xs text-gray-400 ml-2">app/controllers/users_controller.rb</span></h3>
<<< @/snippets/good/users_controller.rb
</div>

::right::

<div class="mx-2 mt-14">
<h3>🐣<span class="text-xs text-gray-400 ml-2">app/controllers/users_controller.rb</span></h3>
<<< @/snippets/bad/controller_responsibility.rb
</div>

---
layout: two-cols
transition: slide-up
class: answer
---

<h1>Q5<span class="text-sm text-gray-600 ml-4">コントローラーの責務</span></h1>

<div class="mx-2">
<h3 class="mt-4">✅<span class="text-xs text-gray-400 ml-2">app/models/user.rb</span></h3>
<<< @/snippets/good/controller_responsibility_model.rb
</div>

::right::

<div class="mx-2 mt-14">
<h3>🐣<span class="text-xs text-gray-400 ml-2">app/controllers/users_controller.rb</span></h3>
<<< @/snippets/bad/controller_responsibility.rb
</div>

