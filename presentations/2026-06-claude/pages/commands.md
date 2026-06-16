---
layout: section
color: black
slide_info: false
---

# Commands

`/` 一文字が、世界を動かす

---
layout: top-title-two-cols
color: orange-light
slide_info: false
products:
  active: [claude-code, cowork]
  partial: [claude]
---

:: title ::

# Commands

:: left ::

- `/` から始まるコマンドで Claude Code をセッション内から制御する組み込み機能
- モデル切替・コンテキスト整理・ワークフロー実行などをすばやく操作できる
- メッセージの先頭でのみ認識される

:: right ::

| コマンド | 概要 |
|---|---|
| `/model` | モデル切替 |
| `/clear` | コンテキストをリセット |
| `/compact` | 会話履歴を圧縮 |
| `/init` | CLAUDE.md を自動生成 |
| `/memory` | Auto Memory の管理 |
| `/resume` | セッション再開 |
| `/diff` | 変更差分を確認 |

<!--
⏱ 約1分

`/clear`と`/compact`の違いは意外と重要で、`/clear`はコンテキストを完全に捨てますが、`/compact`は会話を要約して圧縮するため長いセッションでも作業の流れを維持できます。`/init`は新規プロジェクトにClaudeを導入する際の最初の一手として特に使えます。

→ 次：より高度な自律実行・並列処理系コマンドへ
-->

---
layout: top-title
color: orange-light
slide_info: false
products:
  active: [claude-code, cowork]
  partial: [claude]
---

:: title ::

# Commands

:: content ::

| コマンド | 概要 |
|---|---|
| `/goal` | 条件を満たすまでターンをまたいで自律継続 |
| `/batch` | タスクを分解して複数のサブエージェントが並列実装 |
| `/loop` | 指定したプロンプトを一定間隔で繰り返す |
| `/btw` | 会話履歴に残らないサイドクエスチョン |
| `/rewind` | チェックポイントまで会話・コードを両方ロールバック |

<!--
⏱ 約2分

`/goal`や`/batch`はClaude Codeが「指示を受けて動く」から「自律的に動く」モードへの入り口です。特に`/batch`はサブエージェントを並列で動かせるため、大きなタスクを分解して一気に進めることができます。`/rewind`はミスをしたときのセーフティネットとして、コードと会話の両方を同時に巻き戻せる点がユニークです。

→ 次：Skillsで自分専用のコマンドを作れます
-->
