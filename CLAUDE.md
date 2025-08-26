# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## プロジェクト概要

このリポジトリは[Sli.dev](https://sli.dev/)を使用したプレゼンテーション管理システムです。**AIアシスタントがプレゼンテーションの内容・目的・対象者に応じて毎回最適な構成を考えることを前提**とした、シンプルで柔軟な構造になっています。

## ディレクトリ構造

```
slides/
├── README.md                        # プロジェクト概要とガイド
├── shared/                          # 共通リソース（必要に応じて使用）
│   ├── assets/                     # 共通画像・アイコン・ファイル
│   ├── components/                 # 再利用可能なVueコンポーネント
│   └── styles/                     # 共通CSSスタイル
└── presentations/                   # 実際のプレゼンテーション
    ├── YYYY-MM-topic/              # 日付-トピック形式
    │   ├── slides.md               # メインスライドファイル（Sli.devマークダウン）
    │   ├── slide-outline.md        # スライド構成案とメモ
    │   ├── package.json            # プロジェクト依存関係
    │   ├── components/             # プレゼンテーション固有のコンポーネント
    │   └── public/                 # 静的アセット（画像・動画など）
    └── ...
```

## 開発コマンド

各プレゼンテーションディレクトリで以下のコマンドが利用可能：

```bash
# 開発サーバー起動（ブラウザで自動オープン）
npm run dev

# 本番用ビルド
npm run build

# PDFエクスポート（デフォルト）
npm run export

# 明示的なPDFエクスポート
npm run export:pdf

# PNGエクスポート
npm run export:png
```

## 技術スタック

- **Sli.dev**: マークダウンベースのプレゼンテーションフレームワーク
- **Vue.js**: インタラクティブコンポーネント用
- **Tailwind CSS**: スタイリング（Sli.devに組み込み）
- **TypeScript**: 型安全性
- **Vite**: ビルドツール

### 主要依存関係

- `@slidev/cli`: Sli.devのCLIツール
- `@slidev/theme-*`: テーマパッケージ（例: `@slidev/theme-apple-basic`）
- `slidev-theme-*`: サードパーティテーマ（例: `slidev-theme-light-icons`）

## プレゼンテーション作成ワークフロー

### 1. プロジェクト構造理解

- `slides.md`: メインのスライドコンテンツ（Sli.devマークダウン形式）
- `slide-outline.md`: 構成案、メモ、話者用ノート
- `public/images/`: スライドで使用する画像素材
- `package.json`: 必要最小限の依存関係

### 2. Sli.dev特有の機能

#### マークダウン構文
```markdown
---
theme: apple-basic
colorSchema: light
---

---
layout: intro-image
image: '/images/title.png'
---

# タイトルスライド

---
layout: fact
---

# 重要な数字
```

#### インタラクティブ要素
```markdown
<div v-click>クリックで表示</div>
<div v-click="2">2回目のクリックで表示</div>
<div v-after>自動で表示</div>
```

#### レイアウトバリエーション
- `intro-image`: タイトル画像付き
- `intro-image-right`: 右側画像配置
- `image`: 全画面画像
- `fact`: 大きな数字や事実表示
- `statement`: シンプルな文言表示

### 3. カスタムスタイリング

Tailwind CSSクラスを直接使用可能：
```markdown
<div class="grid grid-cols-2 gap-4">
  <div class="text-center bg-zinc-200 rounded-full">
    内容
  </div>
</div>
```

## 命名規則

### プレゼンテーションディレクトリ
```
presentations/YYYY-MM-topic/
```

**例:**
- `2025-07-keyboard-lt` - キーボード紹介LT
- `2024-12-year-review` - 年末振り返り
- `2025-01-tech-roadmap` - 技術ロードマップ

### ファイル命名
- `slides.md`: メインスライド（固定）
- `slide-outline.md`: 構成メモ（固定）
- `public/images/`: 画像は説明的な名前（例: `title_cover.png`, `comparison_chart.png`）

## 既存プレゼンテーション例

### 2025-07-keyboard-lt（キーボード紹介LT）

**構成パターン:**
- テーマ: `apple-basic` with `light` color scheme
- レイアウト活用: `intro-image`, `fact`, `image`, `intro-image-right`, `statement`
- インタラクティブ要素: `v-click`によるアニメーション
- カスタムスタイル: Tailwind CSSのgridレイアウト、条件付き表示

**ファイル構成:**
- メインスライド: `slides.md`（306行、10スライド構成）
- 企画メモ: `slide-outline.md`（詳細な構成案と話者ノート）
- 画像素材: 12枚の説明画像（製品画像、比較チャート等）

## 重要な考慮事項

### AIとの協働前提設計
- 固定テンプレートではなく、毎回プレゼンテーションに最適化された構成
- 内容・対象者・目的に応じたカスタマイズ重視
- 最新のSli.dev機能を活用した創造的な表現

### パフォーマンス最適化
- 画像は適切なサイズに最適化
- 必要最小限の依存関係
- 静的アセットは`public/`ディレクトリに配置

### 開発時の注意点
- Node.js 18以上推奨
- 画像パスは`/images/filename.ext`形式
- カスタムコンポーネントは`components/`ディレクトリ
- プレゼンテーション固有のスタイルは各プロジェクト内に配置