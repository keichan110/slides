---
layout: section
color: black
slide_info: false
---

# Hooks

Claudeの動きに、罠を仕掛ける

---
layout: top-title
color: orange-light
slide_info: false
products:
  active: [claude-code]
  partial: [cowork]
---

:: title ::

# Hooks

:: content ::

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

<!--
⏱ 約2分

Hooksは「Claudeが何かしたときにトリガーを仕掛ける」仕組みです。settings.jsonに定義しておくと、Claudeが自律的に動いているときでもチームの品質基準を自動で守らせることができます。例えばここに示したように、ファイルを編集するたびに自動でlintをかけることで、Claudeが出力したコードが常にフォーマット済みの状態に保たれます。

→ 次：実際にどんな場面で使えるか、ユースケースの一覧を見てみましょう
-->

---
layout: top-title
color: orange-light
slide_info: false
products:
  active: [claude-code]
  partial: [cowork]
---

:: title ::

# Hooks

:: content ::

| ユースケース | イベント | 説明 |
|---|---|---|
| 自動 lint / フォーマット | `PostToolUse` | ファイル編集後に eslint・prettier を実行 |
| 危険コマンドのブロック | `PreToolUse` | `rm -rf` などを検知して拒否 |
| セッション開始時のコンテキスト注入 | `SessionStart` | git ブランチ・未コミット変更などを追加 |
| デスクトップ通知 | `Notification` | 長い処理の完了を OS 通知で受け取る |
| 環境変数の自動セットアップ | `CwdChanged` | direnv / nvm などを自動実行 |
| セキュリティスキャン | `PostToolUse` | MCP サーバーでファイルをスキャン |
| セッション終了時のクリーンアップ | `SessionEnd` | ログのアップロード、キャッシュ削除 |

<!--
⏱ 約1分

これだけ多様なユースケースがありますが、特に実用的なのは「危険コマンドのブロック」と「自動lint」です。Claudeが予期しない`rm -rf`を実行しようとしたときにPreToolUseで止められるのは、自律エージェントとして使う際の安全網になります。まずはシンプルなlint自動化から試してみるのがおすすめです。

→ 次：Commandsはセッション内から操作するショートカットです
-->
