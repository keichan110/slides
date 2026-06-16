---
layout: section
color: black
slide_info: false
---

# Models

---
layout: top-title
color: gray
slide_info: false
---

:: title ::

# Claude Fable 5 <small>(停止中)</small>

:: content ::

**Anthropic 史上最強のモデル** — Opusの上位に位置する新しいティア

- 最高レベルの推論・長期自律タスク
- 複雑なエージェント処理、研究・分析
- Extended Thinking（適応型）対応

| | |
|---|---|
| コンテキスト | 1M tokens |
| 最大出力 | 128K tokens |
| 料金 | Input $10 / Output $50 /MTok |

<!--
⏱ 約1分

Fable 5は現在停止中ですが、「Opusの上にさらに上位ティアが存在する」という事実がAnthropicのモデル戦略を示しています。単純な会話ではなく「何時間も動き続けるAIエージェント」をターゲットにした設計です。停止中ではありますが、この位置づけは今後のモデル展開を理解するうえで重要な文脈です。

→ 次：現在の最上位モデル、Opus 4.8へ
-->

---
layout: top-title
color: orange-light
slide_info: false
---

:: title ::

# Claude Opus 4.8

:: content ::

**旗艦 Opus モデル** — 自律性と知性の最前線

- 長期・複雑なコーディングタスクに最適
- 状態保持型エージェントとして優秀
- 1M コンテキストで大規模コードベースも対応

| | |
|---|---|
| コンテキスト | 1M tokens |
| 最大出力 | 128K tokens |
| 料金 | Input $5 / Output $25 /MTok |

<!--
⏱ 約1分

「自律性と知性の最前線」というコピーが示す通り、Opusは人間の監視なしに長時間動き続けるエージェント用途を想定しています。コードベースの大規模解析や、複数ステップにわたる意思決定が必要な場面で特に差が出ます。ChatGPTやGeminiの最上位モデルと直接競合するポジションです。

→ 次：日常使いに最適なSonnet 4.6へ
-->

---
layout: top-title
color: orange-light
slide_info: false
---

:: title ::

# Claude Sonnet 4.6

:: content ::

**速度と知性のベストバランス** — 多くのユースケースに最適

- 高い応答速度を保ちながら高い知性
- チャット・API 連携・日常的なコーディングに最適
- Adaptive Thinking 対応

| | |
|---|---|
| コンテキスト | 1M tokens |
| 最大出力 | 64K tokens |
| 料金 | Input $3 / Output $15 /MTok |

<!--
⏱ 約1分

Claude.aiのProプランで主に使えるのがSonnetです。「速度と知性のバランス」はコスト面でも優秀で、Claude CodeのデフォルトモデルもSonnetです。API連携での実用ユースケースでは、まずSonnetを選ぶのが定番です。

→ 次：コスト重視のHaiku 4.5へ
-->

---
layout: top-title
color: orange-light
slide_info: false
---

:: title ::

# Claude Haiku 4.5

:: content ::

**最速・最軽量** — コストと速度を最優先したいときに

- 最高速のレスポンスタイム
- シンプルなタスク・高頻度 API 呼び出しに最適
- コスト重視のアプリケーション向け

| | |
|---|---|
| コンテキスト | 200K tokens |
| 最大出力 | 64K tokens |
| 料金 | Input $1 / Output $5 /MTok |

<!--
⏱ 約1分

Haikuは「たくさん呼ぶ」用途向けです。ユーザー入力のバリデーション・要約・分類など、1回のリクエストは軽いが大量に発生する処理に向いています。コンテキストが200Kと他のモデルより少ない点は注意が必要ですが、そもそも長文を渡す用途向けではないためほとんどの場合は問題ありません。

→ 次：4モデルを並べて比較してみましょう
-->

---
layout: top-title
color: orange-light
slide_info: false
---

:: title ::

# モデル比較

:: content ::

|  | Fable 5 | Opus 4.8 | Sonnet 4.6 | Haiku 4.5 |
|---|---:|---:|---:|---:|
| 特徴 | 最強 | 自律 | 万能 | 高速 |
| コンテキスト (tokens) | 1M | 1M | 1M | 200K |
| 最大出力 (tokens) | 128K | 128K | 64K | 64K |
| Input ($/MTok) | $10 | $5 | $3 | $1 |
| Output ($/MTok) | $50 | $25 | $15 | $5 |

<!--
⏱ 約1分

価格差に注目してください。Fable 5のOutputは$50、Haikuは$5で10倍の差があります。この差は「賢さへの投資」です。API経由で使う場合は「全部Sonnetで済ます」のではなく、用途に合わせた選択でコストを大幅に削減できます。

→ 次：実際の選び方の指針を見てみましょう
-->

---
layout: top-title
color: orange-light
slide_info: false
---

:: title ::

# モデルの選び方

:: content ::

**タスクの工程**で、かける頭脳の大きさを変えるのがコツ

| 工程 | 内容例 | 向いているモデル |
|---|---|---|
| **上流** | 設計・方針決定・難所突破 | Fable 5 / Opus 4.8 |
| **中流** | 実装・展開 | Sonnet 4.6 |
| **下流** | 整形・量産・反復処理 | Haiku 4.5 |

強いモデルほど **長く複雑なタスクで差が出る** — 短い反復作業に使うとコストだけが増える

> **Tip:** **前処理（小）→ 判断（大）→ 量産（小）** と往復させるのが効果的。
> 小モデルで文脈を整えてから大モデルに渡し、量産は再び小モデルで回す

<!--
⏱ 約2分

「タスクの工程で頭脳を変える」という発想は、ソフトウェアのアーキテクチャ設計に近い感覚です。全部Opusを使えば品質は高いですが、Haikuで十分な作業にも高コストを払うことになります。「難しい判断は上位モデルに、反復作業は下位モデルに」という分業が、コスト効率と品質の両立につながります。
-->
