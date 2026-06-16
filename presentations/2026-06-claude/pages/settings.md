---
layout: section
color: black
slide_info: false
---

# settings.json

Claudeが逆らえない掟を刻む

---
layout: top-title
color: orange-light
slide_info: false
products:
  active: [claude-code]
  partial: [cowork]
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

<!--
⏱ 約1分

CLAUDE.mdはあくまで「お願い」なので、Claudeが判断してスキップすることもあります。一方、settings.jsonに書いた制約はClaudeが読む前にハーネス側で強制されるため、どんな指示をしても無視できません。個人利用でも「うっかりやってほしくない操作」を事前に禁止しておける安心感があります。

→ 次：具体的に何をallow/denyできるか見ていきます
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

# settings.json

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

<!--
⏱ 約2分

パターンはグロブ形式で書けるので、`Bash(npm run *)` のように「npm runは何でも許可、でも直接のシェルコマンドは禁止」という細かい制御が可能です。チームリポジトリにsettings.jsonを入れておくと、新メンバーがcloneした瞬間から同じ制約が適用されます。`/permissions`コマンドでGUIから確認・編集できる点も実用的です。

→ 次：HooksでClaudeの動きにトリガーを仕掛けます
-->
