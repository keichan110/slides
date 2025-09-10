---
layout: two-cols
class: problem-slide
---

# Q6

<div class="mx-2">
<h3>🐣<span class="text-xs text-gray-400 ml-2">app/controllers/users_controller.rb</span></h3>
<<< @/snippets/bad/sql_injection.rb
</div>

::right::

<div class="mx-2 mt-24" v-click>
<div class="text-gray-400">
  <p>あれ、文字列埋め込み（<code># {}</code>）でユーザー入力を直接SQLに...</p>
  <p>これって悪意のあるSQL文を注入される脆弱性じゃない？</p>
  <p><code>'; DROP TABLE users; --</code> でデータベース破壊されたらヤバそう</p>
</div>
</div>

<!--
8-9分のシンキングタイム
- 1-2分：個人でコードを読んでセキュリティリスクを考える
- 5-6分：グループでSQLインジェクション攻撃について共有・議論
- 1-2分：具体的な対策方法と安全なコーディング実践について

議論のポイント：
1. SQLインジェクション攻撃とは何か（基本概念）
2. '; DROP TABLE users; --の具体的な攻撃メカニズム
3. 文字列埋め込み（#{}）の危険性
4. プレースホルダー（?）による安全な対策
5. 実際の被害事例と防止の重要性

進行のコツ：
- 「DROP TABLEって何が起こるか分かる？」で危機感を煽る
- 「SQLインジェクション聞いたことある？」で知識レベル確認
- 有名な攻撃事例があれば紹介して実感を持たせる
- 「プレースホルダーはなぜ安全なのか」で技術的理解を深める
-->

---
layout: two-cols
class: approach
---

<h1>Q6<span class="text-sm text-gray-600 ml-4">SQL インジェクションの脆弱性</span></h1>

<div class="mx-2">
<div class="relative">
<h3 v-click.hide="5" class="absolute">🐣<span class="text-xs text-gray-400 ml-2">app/controllers/users_controller.rb</span></h3>
<h3 v-click="5">✅<span class="text-xs text-gray-400 ml-2">app/controllers/users_controller.rb</span></h3>
</div>
````md magic-move
<<< @/snippets/bad/sql_injection.rb{all|5|4,5|4,5|all}
<<< @/snippets/good/sql_injection.rb
````
</div>


::right::

<div class="mx-2 mt-14">

### 問題点と改善ポイント

<div v-click="1">

<span class="text-red-700">**文字列埋め込み (`# {}`) の危険性**</span>  
→ プレースホルダー (`?`) で安全に処理

</div>

<div v-click="2">

<span class="text-red-700">**悪意のあるSQL文を注入される可能性**</span>  
→ <code>where</code>メソッドでパラメータを分離

</div>

<div v-click="3">

<span class="text-red-700">**データベースが破壊される危険性**</span>  
→ 入力値をSQL文字列として安全にエスケープ処理

</div>

<div v-click="4">

悪意のある入力
```ruby
params[:search] = "'; DROP TABLE users; --"
```
```sql
SELECT * FROM users 
WHERE name LIKE '%'; DROP TABLE users; --%'
```
</div>
</div>

---
layout: two-cols
transition: slide-up
class: answer
---

<h1>Q6<span class="text-sm text-gray-600 ml-4">SQL インジェクションの脆弱性</span></h1>

<div class="mx-2">
<h3>✅<span class="text-xs text-gray-400 ml-2">app/controllers/users_controller.rb</span></h3>
<<< @/snippets/good/sql_injection.rb
</div>

::right::

<div class="mx-2 mt-14">
<h3>🐣<span class="text-xs text-gray-400 ml-2">app/controllers/users_controller.rb</span></h3>
<<< @/snippets/bad/sql_injection.rb
</div>
