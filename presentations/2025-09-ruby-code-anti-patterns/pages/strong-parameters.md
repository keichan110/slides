---
layout: two-cols
class: problem-slide
---

# Q3

<div class="mx-2">
<h3>🐣<span class="text-xs text-gray-400 ml-2">app/controllers/users_controller.rb</span></h3>
<<< @/snippets/bad/strong_parameters.rb
</div>

::right::

<div class="mx-2 mt-24" v-click>
<div class="text-gray-400">
  <p><code>params[:user]</code>って何でも受け取っちゃうの？</p>
  <p>もし<code>admin: true</code>が送られてきたらヤバくない？</p>
  <p>パラメータを制限する方法があったはず...</p>
</div>
</div>

<!--
7-8分のシンキングタイム
- 1-2分：個人でコードを読んでセキュリティリスクを考える
- 4-5分：グループで問題点を共有・議論
- 1-2分：具体的な実装方法と実践的な対策について

議論のポイント：
1. admin: trueパラメータの危険性を具体的に理解
2. Mass Assignment攻撃とは何か
3. Strong Parametersによる対策方法
4. 実際の開発現場でのセキュリティ意識

進行のコツ：
- 「もし悪意のある人がadmin: trueを送ってきたら？」で危機感を煽る
- Rails経験者がいれば「Strong Parameters使ったことありますか？」で確認
- 時間があれば「他にもこんな攻撃が...」で発展的議論も
-->
---
layout: two-cols
class: approach
---

<h1>Q3<span class="text-sm text-gray-600 ml-4">Strong Parameters の問題</span></h1>

<div class="mx-2">
<div class="relative">
<h3 v-click.hide="4" class="absolute">🐣<span class="text-xs text-gray-400 ml-2">app/controllers/users_controller.rb</span></h3>
<h3 v-click="4">✅<span class="text-xs text-gray-400 ml-2">app/controllers/users_controller.rb</span></h3>
</div>
````md magic-move
<<< @/snippets/bad/strong_parameters.rb{all|3|3|all}
<<< @/snippets/good/strong_parameters.rb
````
</div>

::right::

<div class="mx-2 mt-14">

### 問題点と改善ポイント

<div v-click="1">

<span class="text-red-700">**パラメータの受け取りが無制限で危険**</span>  
→ Strong Parametersで受け取り属性を制限

</div>

<div v-click="2">

<span class="text-red-700">**悪意のあるパラメータで権限昇格攻撃を受ける**</span>  
→ 必要な属性のみを明示的に許可

</div>

<div v-click="3">

危険な例

```ruby
# 悪意のあるPOST
{ user => { name => "John", email => "...", admin => true } }
# → admin権限が付与される可能性
```
</div>

</div>

---
layout: two-cols
transition: slide-up
class: answer
---

<h1>Q3<span class="text-sm text-gray-600 ml-4">Strong Parameters の問題</span></h1>

<div class="mx-2">
<h3>✅<span class="text-xs text-gray-400 ml-2">app/controllers/users_controller.rb</span></h3>
<<< @/snippets/good/strong_parameters.rb
</div>

::right::

<div class="mx-2 mt-14">
<h3>🐣<span class="text-xs text-gray-400 ml-2">app/controllers/users_controller.rb</span></h3>
<<< @/snippets/bad/strong_parameters.rb
</div>

