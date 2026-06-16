---
layout: section
color: black
slide_info: false
---

# CLAUDE.md

あなた専用Claudeを設計する

---
layout: top-title
color: orange-light
slide_info: false
products:
  active: [claude-code, cowork]
  partial: [claude]
---

:: title ::

# CLAUDE.md

:: content ::

- セッション開始時に Claude が自動で読み込む、プロジェクトルールの設定ファイル
- 一度書けば次のセッションでも同じルールが効く
- プロジェクトルートに置くとチーム全員が同じルールを共有できる

| 書くべきこと | 例 |
|---|---|
| 開発コマンド | `npm run dev`、テストの実行方法 |
| 規約・制約 | 命名規則、使用禁止ライブラリ |
| コンテキスト | ディレクトリ構成、設計の背景 |

> `/init` でコードベースを解析して自動生成することもできる

<!--
⏱ 約2分

CLAUDE.mdは「プロジェクトの説明書をAIに渡す」ようなイメージです。毎回「このプロジェクトはnpm run devで起動して...」と説明しなくて済むようになります。特に強力なのはGitで管理できる点で、チームメンバー全員がcloneするだけで同じルールが適用されます。`/init`コマンドでコードベースを解析して自動生成できるのも便利です。

→ 次：Auto MemoryはClaude側が自動で覚える仕組みです
-->
