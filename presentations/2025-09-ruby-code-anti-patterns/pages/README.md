# Ruby コードアンチパターン問題集

プレゼンテーション用のRuby/Railsコードアンチパターン問題を収録したディレクトリです。問題レベル別に整理し、出題者が問題を選びやすいように構成しています。

## 問題一覧（カテゴリ別）

### 🐣 Ruby基本・コーディング慣習

| 問題ファイル | レベル | 内容 | 学習ポイント |
|-------------|--------|------|-------------|
| [calculator.md](calculator.md) | ⭐ | 変数名・マジックナンバー・return文 | 可読性、Ruby慣習 |
| [string-concatenation.md](string-concatenation.md) | ⭐ | 文字列結合の非効率的な書き方 | 文字列補間、パフォーマンス |
| [array-iteration.md](array-iteration.md) | ⭐ | 手動ループvs関数型メソッド | map、&:記法 |
| [conditional.md](conditional.md) | ⭐ | 冗長な条件分岐 | 述語メソッド、三項演算子 |
| [hash-handling.md](hash-handling.md) | ⭐⭐ | Hash操作とnilチェック | truthy/falsy、all?メソッド |

### 🚂 Rails基本・フレームワーク活用

| 問題ファイル | レベル | 内容 | 学習ポイント |
|-------------|--------|------|-------------|
| [validation.md](validation.md) | ⭐⭐ | バリデーション機能の独自実装 | Rails標準機能活用 |
| [routing.md](routing.md) | ⭐⭐ | 非RESTfulなルーティング | RESTful設計、resources |
| [strong-parameters.md](strong-parameters.md) | ⭐⭐ | セキュリティ機能の未使用 | Strong Parameters |
| [controller-responsibility.md](controller-responsibility.md) | ⭐⭐⭐ | コントローラーの責務肥大 | MVC分離、責務境界 |

### 🏗️ アーキテクチャ・設計原則

| 問題ファイル | レベル | 内容 | 学習ポイント |
|-------------|--------|------|-------------|
| [single-responsibility.md](single-responsibility.md) | ⭐⭐⭐ | 単一責任原則の違反 | サービス分割、責務分離 |
| [fat-model.md](fat-model.md) | ⭐⭐⭐ | ファットモデル問題 | 関心の分離、専用クラス |
| [exception-handling.md](exception-handling.md) | ⭐⭐⭐ | 例外の不適切な処理 | 例外設計、エラー処理戦略 |
| [testability.md](testability.md) | ⭐⭐⭐⭐⭐ | テストしにくいコード | 依存性注入、テスタビリティ |

### ⚡ パフォーマンス・最適化

| 問題ファイル | レベル | 内容 | 学習ポイント |
|-------------|--------|------|-------------|
| [n-plus-one.md](n-plus-one.md) | ⭐⭐⭐⭐ | N+1クエリ問題 | includes、eager loading |
| [performance.md](performance.md) | ⭐⭐⭐⭐ | 全体的なパフォーマンス問題 | キャッシュ、非同期処理 |

### 🗃️ Active Record・データベース設計

| 問題ファイル | レベル | 内容 | 学習ポイント |
|-------------|--------|------|-------------|
| [scope-abuse.md](scope-abuse.md) | ⭐⭐⭐⭐ | スコープの濫用 | パラメータ化、再利用性 |
| [callback-abuse.md](callback-abuse.md) | ⭐⭐⭐⭐ | コールバックの濫用 | 副作用制御、サービス分離 |

### 🛡️ セキュリティ・認証

| 問題ファイル | レベル | 内容 | 学習ポイント |
|-------------|--------|------|-------------|
| [sql-injection.md](sql-injection.md) | ⭐⭐⭐⭐⭐ | SQLインジェクション脆弱性 | プレースホルダー、入力サニタイズ |
| [authorization.md](authorization.md) | ⭐⭐⭐⭐⭐ | 認証・認可の不備 | アクセス制御、セキュリティ設計 |
| [password-security.md](password-security.md) | ⭐⭐⭐⭐⭐ | パスワード管理の問題 | ハッシュ化、セキュアな認証 |

## 出題者向けガイド

### カテゴリ別出題の目安

#### 🐣 Ruby基本・コーディング慣習
- **対象者**: Ruby初学者〜中級者
- **場面**: 基礎研修、コードレビュー教育
- **習得スキル**: Ruby慣習、可読性向上

#### 🚂 Rails基本・フレームワーク活用
- **対象者**: Rails学習者〜実務経験者
- **場面**: Rails研修、MVC理解度確認
- **習得スキル**: フレームワーク活用、設計パターン

#### 🏗️ アーキテクチャ・設計原則
- **対象者**: 中級〜上級エンジニア
- **場面**: 設計レビュー、アーキテクチャ研修
- **習得スキル**: SOLID原則、責務分離

#### ⚡ パフォーマンス・最適化
- **対象者**: 実務経験者〜シニアエンジニア
- **場面**: パフォーマンス改善、スケーラビリティ検討
- **習得スキル**: クエリ最適化、キャッシュ設計

#### 🗃️ Active Record・データベース設計
- **対象者**: Rails中級者〜上級者
- **場面**: データベース設計レビュー、ORMベストプラクティス
- **習得スキル**: ORM活用、データアクセス設計

#### 🛡️ セキュリティ・認証
- **対象者**: 全てのエンジニア（特に上級者）
- **場面**: セキュリティ研修、脆弱性対策
- **習得スキル**: セキュアコーディング、認証設計

### 組み合わせ例

#### 基礎研修パッケージ（60分）
1. calculator.md（ウォームアップ）
2. string-concatenation.md（Ruby基本）
3. validation.md（Rails基本）

#### 設計力向上パッケージ（90分）
1. controller-responsibility.md（責務分離）
2. single-responsibility.md（SOLID原則）
3. fat-model.md（アーキテクチャ設計）

#### セキュリティ強化パッケージ（45分）
1. strong-parameters.md（基本防御）
2. sql-injection.md（脆弱性理解）
3. authorization.md（アクセス制御）

#### パフォーマンス改善パッケージ（75分）
1. n-plus-one.md（クエリ最適化）
2. performance.md（全体最適化）
3. callback-abuse.md（処理効率化）

### 使用方法

1. カテゴリから対象者に適した問題を選択
2. 各問題には「ヒント」「問題点」「改善のポイント」「Before & After」が含まれる
3. ディスカッション形式で進行することを推奨
4. 複数の解決アプローチがある問題では議論を促進

---

*問題は実際のプロジェクトでよく見られるアンチパターンを基に作成されており、実践的なスキル向上に役立ちます。*