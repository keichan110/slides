---
layout: section
---

# SKILLS

---
layout: default
---

# Skills とは

定型的な知識・手順・ベストプラクティスを「再利用可能なカスタムワークフロー」として Claude に覚えさせる仕組み

- **Claude.ai・Claude Code・API のすべてで動作**するクロスプラットフォームな機能
- 「毎回同じことを説明する」から解放される — 一度スキルにすれば何度でも呼び出せる
- 複数スキルを組み合わせて複雑なワークフローを実現できる
- `description` をもとに Claude が文脈から**自動で選択・呼び出し**できる

| スキルの種類 | 例 |
|---|---|
| Built-in | Excel・PowerPoint 作成、データ分析、ファイル変換 |
| 組織・チーム | ブランドガイドライン適用、業界別ワークフロー |
| 個人 | 自分のメモフォーマット、開発ワークフロー |

---
layout: default
---

# Claude.ai のスキル

`claude.com/skills` でスキルを作成・管理できる

- ウェブ UI からスキルを追加・有効化
- **AI にワークフローを説明するだけ**でスキルを自動生成してくれる
- プロジェクトに紐づけてチームで共有可能
- スキルをスタックして複雑なフローも実現できる

---
layout: default
---

# Claude Code のスキル

`SKILL.md` ファイルに指示を書くだけで `/skill-name` コマンドとして呼び出せる

```markdown
---
description: PR を要約してリスクを指摘する
allowed-tools: Bash(gh *)
---

## 対象PR
!`gh pr diff`

## タスク
上記の diff を見て：
1. 変更内容を3行で要約する
2. リスクになりそうな箇所を列挙する
```

| 場所 | スコープ |
|---|---|
| `~/.claude/skills/<名前>/SKILL.md` | 個人の全プロジェクト |
| `.claude/skills/<名前>/SKILL.md` | このプロジェクトのみ |

---
layout: default
---

# SKILL.md の高度な機能

**動的コンテキスト注入** — `` !`git diff HEAD` `` のように書くと実行時にコマンドが走り、結果が Claude へ渡される

**引数渡し** — `/fix-issue 123` と呼び出すと `$ARGUMENTS` が `123` に展開される

**主要フロントマターフィールド**

| フィールド | 説明 |
|---|---|
| `description` | Claude が自動判断に使う（推奨） |
| `allowed-tools` | このスキル実行中に承認なしで使えるツール |
| `disable-model-invocation: true` | 手動のみ。Claude が自動で呼ばない（deploy など） |
| `context: fork` | サブエージェントで隔離実行 |
| `model` / `effort` | このスキル実行中のモデル・effort を上書き |
