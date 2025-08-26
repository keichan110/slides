# Slides Management System

このリポジトリは[Sli.dev](https://sli.dev/)を使用したプレゼンテーション管理システムです。シンプルで柔軟な構造により、プレゼンテーションの内容・目的・対象者に応じて最適な構成を作成できます。

## 🏗️ プロジェクト構造（モノレポ管理）

```
slides/
├── README.md                        # このファイル
├── package.json                     # ルート依存関係（@slidev/cli等の統一管理）
├── shared/                          # 共通リソース（必要に応じて使用）
│   ├── assets/                     # 共通画像・アイコン・ファイル
│   ├── components/                 # 再利用可能なVueコンポーネント
│   └── styles/                     # 共通CSSスタイル
└── presentations/                   # 実際のプレゼンテーション
    ├── YYYY-MM-topic/              # 日付-トピック形式
    │   ├── slides.md               # メインスライドファイル（Sli.devマークダウン）
    │   ├── slide-outline.md        # スライド構成案とメモ
    │   ├── package.json            # テーマ依存関係のみ
    │   ├── components/             # プレゼンテーション固有のコンポーネント
    │   └── public/                 # 静的アセット（画像・動画など）
    └── ...
```

## 🚀 使用方法

### 日常の開発（従来通り）

各プレゼンテーションディレクトリで通常通り開発できます：

```bash
# 開発したいプレゼンテーションディレクトリに移動
cd presentations/2025-07-keyboard-lt

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

# キャッシュクリア
npm run clean
```

### 全体管理（新機能）

ルートディレクトリから全プレゼンテーションを管理：

```bash
# 全プレゼンテーションのビルド
npm run build:all

# 全プレゼンテーションのエクスポート
npm run export:all

# 全プレゼンテーションのクリーンアップ
npm run clean

# 依存関係の管理
npm install                    # ルートとワークスペースの依存関係インストール
npm run install:all           # 完全な再インストール
```

### 新規プレゼンテーション作成

#### 🎯 自動作成スクリプト（推奨）

```bash
# ルートディレクトリから実行
npm run create-slide
```

対話式で以下を入力：
- **日付** (YYYY-MM形式): デフォルトは現在の年月
- **トピック名**: プレゼンテーションの内容

実行すると以下が自動で作成されます：
- `presentations/YYYY-MM-topic/` ディレクトリ
- `package.json` (Slidevデフォルト設定)
- `slides.md` (空のスライドファイル)
- `public/images/` (画像用ディレクトリ)
- 依存関係の自動インストール

作成後は：
```bash
cd presentations/YYYY-MM-topic
npm run dev
```

#### 📝 手動作成（参考）

<details>
<summary>従来の手動手順</summary>

1. **ディレクトリ作成**
   ```bash
   mkdir presentations/YYYY-MM-topic
   cd presentations/YYYY-MM-topic
   ```

2. **package.json作成**（テンプレート）
   ```json
   {
     "name": "YYYY-MM-topic",
     "type": "module",
     "private": true,
     "scripts": {
       "dev": "slidev --open",
       "build": "slidev build",
       "export": "slidev export",
       "export:pdf": "slidev export --format pdf",
       "export:png": "slidev export --format png",
       "clean": "rimraf dist node_modules/.slidev"
     }
   }
   ```

3. **依存関係インストール**
   ```bash
   npm install
   ```

4. **スライド作成**
   ```bash
   npm run dev
   ```

</details>

## 🎨 技術スタック

### コア（統一管理）
- **@slidev/cli**: v52.1.0（全プレゼンテーションで統一）
- **Vue.js**: v3.5.18（インタラクティブコンポーネント用）
- **@slidev/types**: TypeScript型定義

### テーマ（個別管理）
各プレゼンテーションで雰囲気に合ったテーマを選択：
- `@slidev/theme-apple-basic`: Apple風のクリーンなデザイン
- `slidev-theme-purplin`: 紫系のモダンテーマ
- `slidev-theme-unicorn`: カラフルで楽しいテーマ
- `slidev-theme-light-icons`: アイコンリッチなテーマ

### ビルドツール
- **Vite**: 高速ビルド
- **Tailwind CSS**: スタイリング（Sli.devに組み込み）

## 📁 命名規則

### プレゼンテーションディレクトリ
```
presentations/YYYY-MM-topic/
```

**例:**
- `2025-07-keyboard-lt` - キーボード紹介LT
- `2025-08-wezterm` - WezTerm紹介
- `2024-12-year-review` - 年末振り返り
- `2025-01-tech-roadmap` - 技術ロードマップ

### ファイル命名
- `slides.md`: メインスライド（固定）
- `slide-outline.md`: 構成メモ（固定）
- `public/images/`: 画像は説明的な名前（例: `title_cover.png`, `comparison_chart.png`）

## 🔧 依存関係管理の特徴

### モノレポのメリット
- **統一バージョン管理**: @slidev/cli等のコアライブラリを一元管理
- **効率的なディスク使用**: 重複するnode_modulesを削減
- **簡単な全体操作**: 一度に全プレゼンテーションをビルド・エクスポート可能

### テーマの柔軟性
- **個別テーマ選択**: プレゼンテーションごとに最適なテーマを選択
- **雰囲気重視**: 内容や対象者に応じたビジュアル調整が可能
- **独立性維持**: 他のプレゼンテーションに影響なく変更可能

## 💡 開発のコツ

### 柔軟な設計思想
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

## 🚨 トラブルシューティング

### 依存関係の問題
```bash
# クリーンインストール
npm run clean
rm -rf node_modules package-lock.json
npm install
```

### テーマが見つからない
```bash
# 特定のプレゼンテーションでテーマを再インストール
cd presentations/YYYY-MM-topic
npm install
```

### バージョン競合
```bash
# overrides設定により@slidev/cliはv52.1.0で統一されます
# テーマ内の古いバージョンは自動的に上書きされます
npm ls @slidev/cli  # バージョン確認
```

## 📚 参考リンク

- [Sli.dev 公式ドキュメント](https://sli.dev/)
- [テーマギャラリー](https://sli.dev/themes/gallery.html)
- [Vue.js 公式ドキュメント](https://vuejs.org/)
- [Tailwind CSS](https://tailwindcss.com/)

## 🤝 コントリビューション

新しいプレゼンテーション作成や改善提案がある場合は、プロジェクトの柔軟性を保ちながら進めてください。