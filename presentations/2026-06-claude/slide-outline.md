# Claude 入門 - プロダクト・モデル・活用法

> 対象: Gemini等の一般的なチャット型AIの知識がある人（初心者ではない）

---

## 全体構成

1. オープニング
2. Claudeとは（＋Anthropic紹介）
3. プロダクト全体像
   - 3-1. Claude 詳細
   - 3-2. Claude Code
   - 3-3. Claude Cowork
   - 3-4. Claude Security
   - 3-5. Claude for Slack / Microsoft 365 / Chrome
4. モデルラインナップ
5. プラン・料金
6. 深掘り: Claude Code
7. まとめ・Q&A

---

## 1. オープニング

### タイトル
- タイトル: **Claude 入門**
- サブタイトル: 〜プロダクト・モデル・活用法〜
- キャプション: はじめてのAnthropicガイド

### 今日話すこと
- Anthropicというリサーチカンパニーを知る
- Claudeのプロダクト群を「全体感」として把握する
- 各モデルの違いを理解する
- Claude Codeを深掘りする

---

## 2. Claudeとは

### Claudeとは
- **一言で**: Anthropicが開発した、安全性を重視したAIアシスタント
- チャット・コード生成・文書作成・分析など、幅広いタスクに対応
- Web・スマホ・API・CLIなど、さまざまな形で利用できる

### Claudeを作っている会社 ── Anthropicの概要
- 設立: 2021年1月、本社: サンフランシスコ（カリフォルニア州）
- 創業者: Dario Amodei（CEO）・Daniela Amodei（President）を含む元OpenAIメンバー7名
- ミッション: **責任あるAIの実現・AGI（汎用人工知能）の安全な研究開発**
- 資金調達: Amazon・Googleなどから大型出資（企業評価額 約3,500億ドル）

### Anthropicの沿革

| 年月 | 出来事 |
|------|--------|
| 2021年1月 | 元OpenAIメンバー7名により設立 |
| 2022年4月 | 5億8,000万ドルの資金調達 |
| 2023年3月 | **Claude 1** リリース |
| 2023年7月 | **Claude 2** リリース |
| 2023年9〜10月 | Amazon・Googleからそれぞれ大型出資 |
| 2024年3月 | **Claude 3** リリース |
| 2024年11月 | AmazonがAnthropic累計80億ドルを出資 |
| 2025年10月 | **Anthropic Japan** 合同会社を設立 |

---

## 3. Claudeプロダクト全体像

### プロダクトマップ（主要4製品）

| プロダクト | 概要 |
|---|---|
| **Claude** | Web・iOS・Android・Desktopアプリから使えるチャット形式のAIアシスタント |
| **Claude Code** | コードの生成・レビュー・デバッグをターミナル上で行うCLIツール。エディタと統合して開発を支援 |
| **Claude Cowork** | チームで共有ドキュメントを作成・編集・管理するコラボレーション機能 |
| **Claude Security** | セキュリティ分析・脅威検知・インシデント対応に特化したAI |

### プロダクトマップ（統合ツール）

| プロダクト | 概要 |
|---|---|
| **Claude for Slack** | Slackワークスペースに統合し、チャンネルやDMでClaudeに質問・要約・翻訳などを依頼できる |
| **Claude for Microsoft 365** | Word・Excel・Outlookなどのアプリ内でClaudeが文章生成・データ分析・メール作成を支援 |
| **Claude for Chrome** | Chrome拡張機能として動作し、閲覧中のページの要約・翻訳・質問への回答をその場で実行 |

---

## 3-1. Claude

### Claude ― 他のAIとの違い

Geminiと同種のチャットUIだが、独自機能がある

**Projects機能**
- 複数の会話をプロジェクトとしてまとめ、コンテキストを継続保持
- 「先週話した件の続き」がそのまま通じる

**Artifacts機能**
- 生成したコード・ツール・インタラクティブ図をその場で実行・プレビュー
- URLで共有もできる

**ファイル入力**
- PDF・Word・Excel・画像を直接渡して分析・要約
- 音声モードにも対応

### Claudeの典型的な使い方

**長文ドキュメント処理**
- 契約書・仕様書・論文を渡して「この点を確認して」

**継続的な作業（Projects活用）**
- 仕様検討・文章執筆を複数セッションにまたいで進める

**コード生成 + 即時確認（Artifacts活用）**
- 「このロジックをコードにして」→ その場で動かして確認

**無料プランあり** → 今日から試せる（claude.ai）

---

## 3-2. Claude Code

### Claude Code とは
- **一言で**: ターミナル上で動くAIコーディングエージェント
- コードの生成・レビュー・デバッグ・リファクタリングをCLIで実行
- VS Code / JetBrains などのエディタとも統合できる
- コードベース全体を理解した上で自律的に作業する

> 詳細はセクション6「深掘り: Claude Code」で解説

---

## 3-3. Claude Cowork

### Claude Cowork とは
- **一言で**: ローカルファイルと連携してタスクを委譲できるデスクトップ機能
- 手元のファイルシステムに直接アクセスしてClaudeが作業する
- 「このフォルダの全ファイルをまとめて整理して」のようなタスクが可能
- デスクトップアプリ（macOS・Windows）で利用

---

## 3-4. Claude Security

### Claude Security とは
- **一言で**: セキュリティ分析・脅威検知・インシデント対応に特化したAI
- セキュリティチーム・コンプライアンス担当向け
- セキュリティインシデント分析・脅威調査・コンプライアンス対応支援
- Enterpriseプランに含まれる（ベータ）

---

## 3-5. Claude for Slack / Microsoft 365 / Chrome

### つなぐ系プロダクト

| プロダクト | 一言で | できること |
|---|---|---|
| **Claude for Slack** | Slack内でClaude | チャンネルで質問、スレッド要約 |
| **Claude for Microsoft 365** | Office製品内でClaude | Word・Excel・Outlookでの文書作成・分析 |
| **Claude for Chrome** | ブラウザ拡張機能 | 閲覧中のページを要約・翻訳・質問 |

「今使っているツールの中でClaudeを呼び出す」コンセプト
別のタブに切り替えることなくAIアシストを受けられる

---

## 4. モデルラインナップ

### 現行モデル比較 ── 機能・スペック

|  | Opus 4.7 | Sonnet 4.6 | Haiku 4.5 |
|---|---|---|---|
| **特徴** | 最高性能・複雑なタスク向け | 速度と精度のベストバランス（最もよく使われる） | 最速・最安・軽量処理向け |
| **得意なこと** | 複雑推論・エージェント | ほぼ全てのタスク | 大量処理・即レスポンス |
| **コンテキスト** | 1Mトークン | 1Mトークン | 200kトークン |
| **速度** | 普通 | 速い | 最速 |

> 話者ノート: 迷ったらSonnet 4.6 ── ほとんどのユースケースはこれで十分 / Opus 4.7 ── 精度を最優先にしたいとき / Haiku 4.5 ── 大量リクエスト・コスト削減・レイテンシ重視

### 現行モデル比較 ── コスト

|  | Opus 4.7 | Sonnet 4.6 | Haiku 4.5 |
|---|---|---|---|
| **API入力価格** | $5/MTok | $3/MTok | $1/MTok |
| **API出力価格** | $25/MTok | $15/MTok | $5/MTok |

- Haiku は Opus の **1/5 の価格** で大量処理・レイテンシ重視のシーンに最適
- コストと精度のバランスなら **Sonnet が最有力候補**

> MTok = 100万トークン

### Extended Thinking（拡張思考）
- SonnetとHaikuで利用可能な機能
- Claudeが「答える前に考え込む」時間を与えて精度を向上させる
- 有効なケース: 難しい数学・論理パズル / 複雑なコード設計・レビュー / 多段階の推論が必要な分析
- 使う分だけ追加のトークンコストが発生する

---

## 5. プラン・料金

### 個人向けプラン

| | Free | Pro | Max |
|---|---|---|---|
| **価格** | $0 | $20/月 | $100/月 |
| **使用量** | 基本 | Freeの数倍 | Proの5〜20倍 |
| Claude | ✅ | ✅ | ✅ |
| Claude Code | - | ✅ | ✅ |
| Claude Cowork | - | ✅ | ✅ |
| Claude Security | - | - | - |
| Claude for Slack | - | - | - |
| Claude for Microsoft 365 | - | ✅ | ✅ |
| Claude for Chrome | ✅ | ✅ | ✅ |

> **Pro以上でClaude Codeが利用可能**。Maxは高トラフィック時の優先アクセスと先行機能アクセス付き

### 法人向けプラン

| | Team スタンダード | Team プレミアム | Enterprise |
|---|---|---|---|
| **価格** | $20/月 | $100/月 | カスタム |
| **使用量** | Proより多い | スタンダードの5倍 | カスタム |
| Claude | ✅ | ✅ | ✅ |
| Claude Code | ✅ | ✅ | ✅ |
| Claude Cowork | ✅ | ✅ | ✅ |
| Claude Security | - | - | ✅（ベータ） |
| Claude for Slack | ✅ | ✅ | ✅ |
| Claude for Microsoft 365 | ✅ | ✅ | ✅ |
| Claude for Chrome | ✅ | ✅ | ✅ |

> EnterpriseのみClaude Security利用可能

---

## 6. 深掘り: Claude Code

> インストール・基本操作の説明は省略。Claude Code固有のカスタマイズ機能を中心に紹介する。

### カスタマイズの全体マップ

```
Claude Code をカスタマイズする仕組み

├── 記憶・指示系
│   ├── CLAUDE.md        ── Claudeへの指示書（人間が書く）
│   ├── Auto Memory      ── Claudeが自動で書くメモ
│   └── .claude/rules/   ── ファイル種別ごとのルール
│
├── 設定系
│   └── settings.json    ── 動作・権限・Hooks の設定
│
├── 拡張系
│   ├── Skills           ── カスタム /コマンド（再利用可能なワークフロー）
│   ├── Hooks            ── 特定操作の前後に自動実行されるスクリプト
│   └── Plugins          ── Skills・Hooks・MCP をまとめて配布する仕組み
│
└── 連携系
    └── MCP              ── 外部ツールとの接続プロトコル
```

### CLAUDE.md ── Claudeへの指示書

- プロジェクトやユーザーの「ルール・文脈」をClaudeに永続的に伝えるMarkdownファイル
- セッション開始時に自動で読み込まれ、毎回同じ説明を繰り返さなくて済む

**スコープ（置き場所）**

| スコープ | 場所 | 共有範囲 |
|---|---|---|
| 組織管理 | システムレベル（IT管理） | 組織全員 |
| ユーザー | `~/.claude/CLAUDE.md` | 自分の全プロジェクト |
| プロジェクト | `./CLAUDE.md` | チーム全員（git管理） |
| ローカル | `./CLAUDE.local.md` | 自分のみ（.gitignore推奨） |

**書くべき内容の例**

```markdown
## 技術スタック
- TypeScript / Node.js / PostgreSQL

## コーディング規約
- コメントは日本語で書く
- テストは必ず vitest で書く

## 注意事項
- 本番DBへの直接アクセス禁止
```

- `/init` コマンドでClaudeがコードベースを解析して自動生成も可能

### Auto Memory ── Claudeが自動で書くメモ

- **Claudeが自ら学習内容をメモとして保存する仕組み**
- 人間が何も書かなくても、会話の中でClaudeが気づいた情報を記録する

**保存場所**

```
~/.claude/projects/<プロジェクト名>/memory/
├── MEMORY.md        ← インデックス（毎セッション読み込まれる）
├── debugging.md     ← デバッグ知見
└── api-conventions.md
```

**CLAUDE.md との役割分担**

| | CLAUDE.md | Auto Memory |
|---|---|---|
| 誰が書く | 人間 | Claude |
| 何を書く | ルール・規約 | 学習・気づき |
| 管理 | 手動で編集 | Claudeが自動更新 |

- `/memory` コマンドで確認・編集できる

### settings.json ── 動作・権限・Hooks の設定

- Claude Codeの動作を細かく制御するJSONファイル
- 権限設定・モデル選択・Hooks設定などをここで管理

**スコープ（置き場所）**

| スコープ | 場所 | 共有 |
|---|---|---|
| 組織（上書き不可） | システムレベル | ✅ IT管理 |
| ユーザー | `~/.claude/settings.json` | ❌ 自分のみ |
| プロジェクト | `.claude/settings.json` | ✅ git管理 |
| ローカル | `.claude/settings.local.json` | ❌ .gitignore |

**設定できる主な内容**

```json
{
  "model": "claude-sonnet-4-6",
  "language": "japanese",
  "permissions": {
    "allow": ["Bash(npm run *)", "Bash(git *)"],
    "deny": ["Read(.env)", "Bash(rm -rf *)"]
  },
  "hooks": { }
}
```

### Skills ── 再利用可能なカスタムコマンド

- `/skill-name` で呼び出せる、チームで共有できるカスタムワークフロー
- `SKILL.md` に指示を書くだけで作成できる
- ClaudeがAIとして内容を解釈して実行する（シェルスクリプトとは異なる）

**スコープ（置き場所）**

| 場所 | スコープ |
|---|---|
| `~/.claude/skills/<名前>/SKILL.md` | 個人の全プロジェクト |
| `.claude/skills/<名前>/SKILL.md` | このプロジェクトのみ |

**SKILL.md の構造例**

```markdown
---
description: PRを要約してリスクを指摘する。レビュー時に使う。
allowed-tools: Bash(gh *)
---

## 対象PR
!`gh pr diff`

## タスク
上記のdiffを見て：
1. 変更内容を3行で要約する
2. リスクになりそうな箇所を列挙する
```

**ポイント**: `` !`git diff HEAD` `` のように書くとスキル実行時にコマンドが走り、結果がClaudeへ渡される（動的コンテキスト注入）

### Built-in Commands ── よく使うコマンド

> `/` を入力するとコマンドリストが表示される。★ = 特によく使う

**セットアップ系**

| コマンド | 説明 |
|---|---|
| `/init` ★ | コードベースを解析して `CLAUDE.md` を自動生成する |
| `/doctor` | インストール・設定の状態を診断する |
| `/permissions` ★ | 許可・拒否ルールをインタラクティブに管理 |
| `/memory` ★ | `CLAUDE.md` とAuto Memoryの確認・編集 |

**会話・コンテキスト管理系**

| コマンド | 説明 |
|---|---|
| `/compact [指示]` ★ | 長い会話を要約してコンテキストを節約する |
| `/context` | コンテキスト使用量をビジュアルで確認 |
| `/clear` | 新しい会話を開始する |
| `/rewind` | 会話やコードを過去の時点に巻き戻す |
| `/btw <質問>` | 本筋の会話を汚さずにサッと質問できる |
| `/recap` | 今のセッションを一行で要約させる |

**モデル・動作調整系**

| コマンド | 説明 |
|---|---|
| `/model [モデル名]` ★ | 使用モデルをセッション中に切り替える |
| `/effort [low/medium/high]` | Extended Thinkingの思考量を調整する |
| `/fast [on/off]` | Fastモードのオン・オフ切り替え |
| `/plan [説明]` ★ | 実装前に計画モードへ切り替える |

**確認・レビュー系**

| コマンド | 説明 |
|---|---|
| `/diff` | 変更差分をインタラクティブに確認 |
| `/usage` | セッションのコスト・使用量を確認 |

**ツール・拡張系**

| コマンド | 説明 |
|---|---|
| `/mcp` | MCPサーバーの接続状態を管理 |
| `/hooks` | 設定済みHooksを一覧表示 |
| `/skills` | 利用可能なSkillsを一覧表示 |
| `/plugin` | プラグインの管理 |

**Bundled Skills** ── デフォルトで入っているスキル

| スキル | 説明 |
|---|---|
| `/simplify` ★ | 変更済みコードを見てリファクタリング・改善提案 |
| `/debug` ★ | デバッグログを有効化して問題を特定・修正 |
| `/review` | PRの内容をレビューしてフィードバック |
| `/security-review` | セキュリティ脆弱性を検出・報告 |
| `/batch <指示>` | 大規模変更を独立タスクに分解して並列実行 |
| `/loop [間隔] [指示]` | 同じ指示を繰り返し実行し続ける |
| `/run` | アプリを実際に起動して変更が動くか確認 |
| `/verify` | アプリをビルド・実行して変更が期待通りか確認 |
| `/ultrareview [PR]` | クラウド上でマルチエージェントによる深いPRレビュー |
| `/ultraplan <指示>` | クラウドで計画を策定しブラウザで確認・承認 |

### Hooks ── 特定操作の前後に自動実行

- Claude Codeのライフサイクルの特定タイミングでシェルコマンドを自動実行する仕組み

**主なフックイベント**

| イベント | タイミング |
|---|---|
| `PreToolUse` | ツール実行の**直前** |
| `PostToolUse` | ツール実行の**直後** |
| `UserPromptSubmit` | ユーザーが入力を送る前 |
| `Stop` | Claudeが応答を完了したとき |
| `SessionStart` | セッション開始時 |

**設定例（settings.json）**

```json
{
  "hooks": {
    "PostToolUse": [{
      "matcher": "Edit|Write",
      "hooks": [{ "type": "command", "command": "eslint ${tool_input.file_path} --fix" }]
    }],
    "PreToolUse": [{
      "matcher": "Bash",
      "hooks": [{ "type": "command", "command": "./.claude/hooks/block-dangerous.sh" }]
    }]
  }
}
```

**よくあるユースケース**
- ファイル編集後に自動でlint・フォーマット実行
- 危険なコマンド（`rm -rf`など）の実行前にブロック
- セッション開始時に環境変数やコンテキストを注入

### Plugins ── Skills・Hooks・MCPをセットで配布

- Skills・Hooks・MCP設定をひとまとめにして、チームや外部に配布できる仕組み

**スタンドアロン設定 vs プラグイン**

| | スタンドアロン（`.claude/`） | プラグイン |
|---|---|---|
| スキル名 | `/deploy` | `/my-plugin:deploy`（名前空間あり） |
| 向いている用途 | 個人・単一プロジェクト | チーム共有・複数プロジェクト |
| 配布方法 | 手動コピー | マーケットプレイス or `--plugin-dir` |

**プラグインの構造**

```
my-plugin/
├── .claude-plugin/
│   └── plugin.json      ← プラグイン定義（名前・バージョン）
├── skills/              ← カスタムスキル群
├── hooks/               ← Hooks設定
└── .mcp.json            ← MCP設定
```

**配布・インストール**

```bash
# 開発中のテスト
claude --plugin-dir ./my-plugin

# マーケットプレイスからインストール
/plugin install <marketplace> <plugin-name>
```

### MCP ── 外部ツールとの接続プロトコル

- **Model Context Protocol** ── AIと外部ツールをつなぐオープンなプロトコル（Anthropicが策定）
- MCPサーバーを追加すると、Claude Codeがそのツールを「ツール」として使えるようになる

**代表的なMCPサーバー**

| MCPサーバー | できること |
|---|---|
| GitHub | Issue・PR・リポジトリを直接操作 |
| Slack | メッセージ取得・送信 |
| Database（PostgreSQL等） | DBスキーマ参照・クエリ実行 |
| Figma | デザインデータを読んでコード生成 |
| Google Drive / Notion | ドキュメント参照・編集 |
| Linear / Jira | タスク管理との連携 |

`/mcp` コマンドで接続状態を確認できる

**MCPはClaude Code以外でも利用可能** ── 他のAIツールにも広がっている共通規格

---

## 7. まとめ・Q&A

### 今日のまとめ
- **Anthropic** = AI安全性を最優先にしたリサーチカンパニー
- **モデル** = Opus（最強）/ Sonnet（バランス）/ Haiku（最速）
- **プロダクト** = 使う（Claude.ai）/ 作る（API）/ つなぐ（統合ツール）
- **Claude Code** = コードベースを理解して自律的に動くCLIエージェント
  - CLAUDE.md で指示書を渡す
  - MCP で外部ツールと連携できる

### まず試してみるなら
1. **今日から**: claude.ai の Freeプランでチャット
2. **エンジニアなら**: Claude Code をインストールして使ってみる
3. **サービスに組み込むなら**: Anthropic API を試す

### 参考リンク

| リソース | URL |
|---|---|
| Claude.ai | https://claude.ai |
| Anthropic公式 | https://www.anthropic.com |
| APIドキュメント | https://docs.anthropic.com |
| Claude Code ドキュメント | https://docs.anthropic.com/claude-code |

### Q&A

---

## 話者ノート

### 全体のトーン
- 技術的すぎず、「全体感をつかんでもらう」ことを最優先
- 「ChatGPTと何が違うの？」という疑問を意識して進める
- Claude Code セクションは実際の操作感を見せると効果的

### 各プロダクト紹介での注意点
- 「こういうカテゴリがある」「こういう人が使う」で十分
- 深掘りはしない旨を最初に断るとよい

### Claude Code デモ候補（任意）
1. プロジェクトに `claude` で入る → ファイル構成を聞く
2. バグを意図的に仕込んで「直して」と指示
3. コミットメッセージ自動生成を見せる

### よくある質問への準備
- Q: 日本語は使えますか？ → A: はい、高精度対応。日本語で指示してOK
- Q: ChatGPTと何が違うの？ → A: 安全性重視・長い文脈・Claude Codeのようなエージェント系が強み
- Q: 無料で使えますか？ → A: claude.ai FreeプランはOK。Claude CodeはProプランかAPIキーが必要
- Q: Claude Codeは危険じゃないの？ → A: 変更前に確認を求めるPermissionモードがある、差分確認を習慣に
