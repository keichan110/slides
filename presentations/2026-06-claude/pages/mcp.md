---
layout: section
---

# MCP
コネクタ

---

# MCP とは

**Model Context Protocol** ── AI と外部ツールをつなぐオープンプロトコル（Anthropic が策定）

- 「AI がどうやって外部ツールを使うか」を**標準化**した共通規格
- MCP サーバーを追加すると Claude がそのツールを「ツール」として直接使えるようになる
- Claude だけでなく Cursor・VS Code GitHub Copilot など**他の AI ツールにも広がっている**
- 一度 MCP サーバーを作れば複数の AI ツールで再利用できる

---

# MCPでできること

「別のツールからデータをコピペして Claude に渡す」が不要になる

| やりたいこと | MCPで実現 |
|---|---|
| 「JIRA ENG-521 の機能を実装してPRを作成して」 | JIRA + GitHub MCP |
| 「Sentry の直近24時間のエラーを調べて直して」 | Sentry MCP |
| 「Figma のデザインを見てコンポーネントを作って」 | Figma MCP |
| 「users テーブルのスキーマを確認してモデル生成して」 | PostgreSQL MCP |
| 「Slack の #design チャンネルの要望をまとめて」 | Slack MCP |

---

# 代表的なMCPサーバー

| MCPサーバー | できること |
|---|---|
| GitHub | Issue・PR・リポジトリを直接操作 |
| Slack | メッセージ取得・送信 |
| PostgreSQL | DB スキーマ参照・クエリ実行 |
| Figma | デザインデータを読んでコード生成 |
| Notion / Google Drive | ドキュメント参照・編集 |
| Linear / Jira | タスク管理との連携 |
| Sentry | エラー・スタックトレース参照 |
| Playwright | ブラウザ操作・E2Eテスト |

---

# MCPへの接続

「どの MCP サーバーに繋ぐか」を Claude に教えるだけで、あとは Claude が自動でツールを発見して使い始める

- **Claude.ai**: 設定画面の Integrations からサーバーの URL を追加するだけ
- **Claude Code**: 設定ファイルや `claude mcp add` コマンドでサーバーを登録
- 認証が必要なサービス（GitHub・Notion など）は OAuth フローで認証できる
- チームで同じ MCP 環境を共有すれば「誰がやっても同じ操作ができる」状態になる
