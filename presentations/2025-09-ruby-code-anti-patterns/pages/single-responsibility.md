---
layout: two-cols
class: problem-slide
---

# Q8

<div class="mx-2">
<h3>🐣<span class="text-xs text-gray-400 ml-2">app/controllers/orders_controller.rb</span></h3>
<<< @/snippets/bad/single_responsibility.rb
</div>

::right::

<div class="mx-2 mt-24" v-click>
<div class="text-gray-400">
  <p>うーん、1つのメソッドで色々やりすぎじゃない？</p>
  <p>注文作成、在庫チェック、割引計算...責務が多すぎるかも</p>
  <p>これだとテストしにくそうだし、どこかで変更があったら全体に影響しそう</p>
</div>
</div>

<!--
8-9分のシンキングタイム
- 1-2分：個人でコードを読んで複数責務の問題を考える
- 5-6分：グループで単一責任原則について共有・議論
- 1-2分：具体的なリファクタリング手順と実践的な方法

議論のポイント：
1. 単一責任原則（SRP）とは何か
2. 「責務」をどう特定・分離するか
3. メソッド分割によるテスタビリティの向上
4. 過度な分割vs適度な分割のバランス
5. 実際の開発現場でのリファクタリング経験

進行のコツ：
- 「このメソッド、何個のことをやってる？」で問題を具体化
- 「SOLID原則って聞いたことある？」で知識レベル確認
- 「テストするときどの部分をテストする？」でテスタビリティを実感
- 「実際にこんな長いメソッドを見たことある？」で経験談を引き出す
-->

---
layout: two-cols
class: approach
---

<h1>Q8<span class="text-sm text-gray-600 ml-4">メソッドの責務が多すぎる</span></h1>

<div class="mx-2">
<h3>🐣<span class="text-xs text-gray-400 ml-2">app/controllers/orders_controller.rb</span></h3>
<<< @/snippets/bad/single_responsibility.rb{all|1,2,3,5,6,7,8,10,11,12,13,14,15,17,18|5,6,7,8,10,11,12,13,14,15|17,18}
</div>

::right::

<div class="mx-2 mt-14">

### 問題点と改善ポイント

<div v-click="1">

<span class="text-red-700">**1つのメソッドに複数の責務**</span>  
→ メソッドを単一責任に分割

</div>

<div v-click="2">

<span class="text-red-700">**ビジネスロジックがController内**</span>  
→ ModelのvalidationとcallbackでModel層に移動

</div>

<div v-click="3">

<span class="text-red-700">**テスト・保守が困難**</span>  
→ 各責務を独立してテスト可能にする

</div>
</div>

---
layout: two-cols
class: answer
---

<h1>Q8<span class="text-sm text-gray-600 ml-4">メソッドの責務が多すぎる</span></h1>

<div class="mx-2">
<h3>🐣<span class="text-xs text-gray-400 ml-2">app/controllers/orders_controller.rb</span></h3>
<<< @/snippets/bad/single_responsibility.rb
</div>

::right::

<div class="mx-2 mt-14">
<h3>✅<span class="text-xs text-gray-400 ml-2">app/controllers/orders_controller.rb</span></h3>
<<< @/snippets/good/single_responsibility.rb
</div>

---
layout: two-cols
transition: slide-up
class: answer
---

<h1>Q8<span class="text-sm text-gray-600 ml-4">メソッドの責務が多すぎる</span></h1>

<div class="mx-2">
<h3>🐣<span class="text-xs text-gray-400 ml-2">app/controllers/orders_controller.rb</span></h3>
<<< @/snippets/bad/single_responsibility.rb
</div>

::right::

<div class="mx-2 mt-14">
<h3 class="mt-4">✅<span class="text-xs text-gray-400 ml-2">app/models/order.rb</span></h3>
<<< @/snippets/good/single_responsibility_model.rb
</div>

