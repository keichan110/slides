---
layout: quote
---

# Hooks
Claude | Claude Code | Claude Cowork

---

# Hooks

- ファイル編集・セッション開始など特定タイミングにシェルコマンドを自動実行する仕組み
- lint・フォーマット・危険操作のブロック・通知など、人の手を借りずに自動化できる

```json
{
  "hooks": {
    "PostToolUse": [{
      "matcher": "Edit|Write",
      "hooks": [{ "type": "command", "command": "eslint ${tool_input.file_path} --fix" }]
    }]
  }
}
```

---

# Hooks — ユースケース

| ユースケース | イベント | 説明 |
|---|---|---|
| 自動 lint / フォーマット | `PostToolUse` | ファイル編集後に eslint・prettier を実行 |
| 危険コマンドのブロック | `PreToolUse` | `rm -rf` などを検知して拒否 |
| セッション開始時のコンテキスト注入 | `SessionStart` | git ブランチ・未コミット変更などを追加 |
| デスクトップ通知 | `Notification` | 長い処理の完了を OS 通知で受け取る |
| 環境変数の自動セットアップ | `CwdChanged` | direnv / nvm などを自動実行 |
| セキュリティスキャン | `PostToolUse` | MCP サーバーでファイルをスキャン |
| セッション終了時のクリーンアップ | `SessionEnd` | ログのアップロード、キャッシュ削除 |
