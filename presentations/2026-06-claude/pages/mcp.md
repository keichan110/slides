---
layout: section
color: black
slide_info: false
---

# MCP

Claudeに、手と目を与える

---
layout: top-title
color: orange-light
slide_info: false
products:
  active: [claude-code, cowork]
  partial: [claude]
---

:: title ::

# MCP

:: content ::

- 外部ツールを Claude が直接操作できるようにするオープンプロトコル（Anthropic 策定）
- MCP サーバーを追加するだけで Claude がそのツールを自動で発見・使用する
- 「別ツールからコピペして渡す」手間がなくなる

| MCP サーバー | できること |
|---|---|
| GitHub | Issue・PR・リポジトリを直接操作 |
| Slack | メッセージ取得・送信 |
| Notion / Google Drive | ドキュメント参照・編集 |
| Playwright | ブラウザ操作・E2E テスト |

<!--
⏱ 約2分

MCPの本質は「Claudeに道具を持たせる」ことです。これまでSlackのメッセージをコピペしてClaudeに渡していたような作業が、MCP経由でClaudeが直接Slackを参照・送信できるようになります。Anthropicがオープンプロトコルとして策定しているため、サードパーティ製のMCPサーバーも多数公開されており、自分でサーバーを書くことも可能です。

→ 次：Pluginsで機能をまとめてパッケージ化できます
-->
