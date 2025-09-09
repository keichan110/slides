---
layout: two-cols
class: problem-slide
---

# Q1

<div class="mx-2">
<h3>🐣<span class="text-xs text-gray-400 ml-2">app/models/user.rb</span></h3>
<<< @/snippets/bad/conditional.rb
</div>

::right::

<div class="mx-2 mt-24">
<div class="text-gray-400" v-click>
  <p><code>== true</code> って冗長じゃない？</p>
  <p>Ruby は return 書かなくても最後の式が返るよね</p>
  <p>三項演算子使えば 1 行で書けそうだな</p>
</div>
</div>

<!--
5分のシンキングタイム
- 1分：個人でコードを読んで問題点を考える
- 3分：グループで問題点を共有・議論
- 1分：改善案について話し合う

進行のコツ：
「まず1分で個人で見てください」→「気づいた点を共有しましょう」→「改善案はいかがですか？」と時間を区切って進行すると効果的です。
-->

---
layout: two-cols
class: approach
---

<h1>Q1<span class="text-sm text-gray-600 ml-4">条件分岐</span></h1>

<div class="mx-2">
<h3>🐣<span class="text-xs text-gray-400 ml-2">app/models/user.rb</span></h3>
<<< @/snippets/bad/conditional.rb{all|2|3,5|2,4,6}
</div>

::right::

<div class="mx-2 mt-14">

### 問題点と改善ポイント

<div v-click="1">

<span class="text-red-700">**`== true` は不要**</span>  
→ 述語メソッドは既に真偽値を返す

</div>

<div v-click="2">

<span class="text-red-700">**不要な`return`文**</span>  
→ 最後の式の値が自動的に返される

</div>

<div v-click="3">

<span class="text-red-700">**冗長な条件分岐**</span>  
→ 三項演算子でコンパクトに表現

</div>
</div>

---
layout: two-cols
transition: slide-up
class: answer
---

<h1>Q1<span class="text-sm text-gray-600 ml-4">条件分岐</span></h1>

<div class="mx-2">
<h3>🐣<span class="text-xs text-gray-400 ml-2">app/models/user.rb</span></h3>
<<< @/snippets/bad/conditional.rb
</div>

::right::

<div class="mx-2 mt-14">
<h3>✅<span class="text-xs text-gray-400 ml-2">app/models/user.rb</span></h3>
<<< @/snippets/good/conditional.rb
</div>
