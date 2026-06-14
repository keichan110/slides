---
layout: section
color: black
slide_info: false
---

# settings.json
Claude | Claude Code | Claude Cowork

---
layout: top-title
color: orange-light
slide_info: false
---

:: title ::

# settings.json

:: content ::

- Claude Code の動作を強制的に制御する JSON ファイル
- CLAUDE.md と違い、Claude はここのルールを無視できない
- チームで「やってはいけない操作」を明示的に縛るためのファイル

| | CLAUDE.md | settings.json |
|---|---|---|
| 性質 | お願い・コンテキスト | 規約・制約 |
| Claude は無視できるか | できる | **できない** |
| 主な用途 | 背景知識・ルール | 権限・動作設定 |

---
layout: top-title
color: orange-light
slide_info: false
---

:: title ::

# settings.json — permissions

:: content ::

Claude が実行できる操作を allow / deny で制御する

```json
{
  "permissions": {
    "allow": ["Bash(npm run *)", "Bash(git *)"],
    "deny": ["Read(.env)", "Bash(rm -rf *)"]
  }
}
```

- `.env` → シークレットの読み取りを禁止
- `rm -rf *` → 誤削除を防ぐ
- `curl *` → 外部通信を制限

> `/permissions` コマンドで対話型 UI から確認・編集できる
