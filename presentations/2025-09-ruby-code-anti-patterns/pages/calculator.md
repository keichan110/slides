---
layout: two-cols
class: quiz
---

# Ex


<div class="mx-2">
<h3>🐣<span class="text-xs text-gray-400 ml-2">app/services/calculator.rb</span></h3>
<<< @/snippets/bad/calculator.rb
</div>

::right::


<div class="mx-2 mt-24" v-click>
<div class="text-gray-400">
  <p>あれ、変数名からは何してるかわからないな...</p>
  <p>0.08 って何の数字だろう？</p>
  <p>Ruby って最後の return 省略できたよね？</p>
</div>
</div>


---
layout: two-cols
class: approach
---

<h1>Ex<span class="text-sm text-gray-600 ml-4">変数名の問題</span></h1>

<div class="mx-2">
<div class="relative">
<h3 v-click.hide="5" class="absolute">🐣<span class="text-xs text-gray-400 ml-2">app/services/calculator.rb</span></h3>
<h3 v-click="5">✅<span class="text-xs text-gray-400 ml-2">app/services/calculator.rb</span></h3>
</div>
````md magic-move
<<< @/snippets/bad/calculator.rb{all|3|3|4|all}
<<< @/snippets/good/calculator.rb
````
</div>


::right::

<div class="mx-2 mt-14">

### 問題点と改善ポイント

<div v-click="1">

<span class="text-red-700">**変数名が不明確**</span>（`x`, `y`, `z`って何？）  
→ 意味のある変数名を使用する

</div>

<div v-click="2">

<span class="text-red-700">**マジックナンバー**</span>（`0.08`って何？）  
→ 定数化して意図を明確にする

</div>

<div v-click="3">

<span class="text-red-700">**不要な`return`文**</span>  
→ 最後の式の値が自動的に返されるため削除

</div>

</div>

---
layout: two-cols
transition: slide-up
class: answer
---

<h1>Ex<span class="text-sm text-gray-600 ml-4">変数名の問題</span></h1>

<div class="mx-2">
<h3>✅<span class="text-xs text-gray-400 ml-2">app/services/calculator.rb</span></h3>
<<< @/snippets/good/calculator.rb
</div>

::right::

<div class="mx-2 mt-14">
<h3>🐣<span class="text-xs text-gray-400 ml-2">app/services/calculator.rb</span></h3>
<<< @/snippets/bad/calculator.rb
</div>

