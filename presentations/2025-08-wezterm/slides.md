---
theme: default
colorSchema: dark
layout: cover
background: ./images/title_background.png
---

<div class="ml-20 text-neutral-200">
  <h1>ターミナルにこだわると<br />モテるらしい!?</h1>
</div>

<span class="ml-24 text-neutral-500">2025.08.07</span>

---

<div class="flex justify-center">
  <div class="grid grid-cols-2 items-end gap-x-16">
    <div class="text-center flex flex-col justify-end">
      <img class="mx-auto" src="./images/claude_code.png">
    </div>
    <div class="text-center flex flex-col justify-end">
      <img class="mx-auto" src="./images/gemini_cli.png">
    </div>
  </div>
</div>

---
layout: statement
---

# 今ターミナルが<span class="text-indigo-400">アツい！</span>

---
layout: center
---

# ✨💻✨

---

<div class="flex flex-col items-center justify-center w-full h-full">
  <img class="h-full" src="./images/default_terminal_screenshot.png" />
</div>

---
layout: center
---

# 見にくい...

---

<div class="flex flex-col items-center justify-center w-full h-full">
  <img class="max-h-full max-w-full object-contain" src="./images/search_terminal_hard_to_see.png" />
</div>

---
layout: center
---

# ダサい...

---

<div class="w-full h-full">
  <img class="h-full w-full object-contain" src="./images/search_terminal_uncool.png" />
</div>

---

<div class="flex flex-col items-center justify-center w-full h-full">
  <span class="text-5xl text-slate-400">モテない...</span>
</div>

---

<div class="flex flex-col items-center justify-center w-full h-full">
  <span class="text-2xl">ターミナルをいい感じにすれば<span class="text-5xl text-indigo-400">モテる</span>!?</span>
</div>

---

<div class="flex flex-col items-center justify-center w-full h-full">
  <span class="text-2xl"><span class="text-5xl text-indigo-400">モテる</span>ターミナルとは 🔍</span>
</div>

---

<div class="place-items-center w-full h-full">
  <img class="h-full" src="./images/search_popular_terminal.png" />
</div>

---

<div class="flex flex-col items-center justify-center w-full h-full">
  <span class="text-2xl"><span class="text-5xl text-indigo-400">WezTerm</span>だと<span class="text-5xl text-indigo-400">モテる</span>？</span>
</div>

---

<div class="w-full h-full flex flex-col items-center justify-center">
  <img src="https://raw.githubusercontent.com/wezterm/wezterm/main/assets/icon/wezterm-icon.svg">
  <h1 class="pt-4">WezTerm</h1>
</div>

---
layout: center
---

<p>WezTermは、</p>
<p><a class="text-indigo-400" href="https://x.com/wezfurlong">@wez</a>によって書かれ、</p>
<p><span class="text-indigo-400">Rust</span>で実装された</p>
<p>強力な<span class="text-indigo-400">クロスプラットフォーム</span>の</p>
<p><span class="text-indigo-400">ターミナルエミュレーター</span> 兼 <span class="text-indigo-400">マルチプレクサ</span>です。</p>

---

<div class="flex flex-col items-center justify-center w-full h-full">
  <span class="text-4xl text-slate-400">よくわからん</span>
  <span class="text-xl mt-4" v-click>解説していきます</span>
</div>

---
layout: image-right
image: ./public/images/x_wezfurlong.png
---

# @Wez

### Wez Furlong

- 元 Meta社勤務
  - Watchman
  - EdenFS
- 元 Message Systems 社勤務
- PHPの開発者

<v-click>

<div class="mt-18 text-2xl">とにかくすごい人が作ってる</div>

</v-click>

---

# Rust

- C言語やC++に代わる安全で高性能なシステムプログラミング言語を目指す
  - Mozilla社が開発支援
- 特徴
  - メモリ安全性
  - 高いパフォーマンス
  - 並行処理の安全な実現
- MicrosoftやGoogle、Amazonなどで採用
  - Microsoftからは「CやC++に代わる最有力の言語」と評価

<div class="mt-16 text-2xl" v-click>とにかく速い</div>
---

# クロスプラットフォーム

- 一つのアプリケーションを複数の異なるプラットフォームで、<br />ほとんど変更を加えることなく同様に動作させる技術
  - Windows, macOS, Linux, etc...

- マルチプラットフォームとの違い
  - マルチプラットフォーム
    - それぞれのOSに対して別々に開発
  - クロスプラットフォーム
    - 単一のコードベースで複数のOSに対応

<div class="mt-12 text-2xl" v-click>開発も速い</div>

---

# ターミナルエミュレーター

<div class="flex justify-center">
  <div class="grid grid-cols-2 mt-24 items-end gap-x-16">
    <div class="text-center flex flex-col justify-end">
      <img class="mx-auto w-24" src="./images/windows_terminal_icon.png">
      <p>Windows Terminal</p>
    </div>
    <div class="text-center flex flex-col justify-end">
      <img class="mx-auto w-24" src="./images/terminal_app_icon.png">
      <p>Terminal.app</p>
    </div>
  </div>
</div>

<div class="mt-10 text-2xl text-center" v-click>この仲間</div>

---

# マルチプレクサ

- ターミナルウィンドウの中で複数の仮想ターミナルを管理
  - ターミナルが切断されても仮想ターミナルはバックグラウンドで継続
  - 仮想ターミナルに再接続すれば作業再開
- 有名なマルチプレクサ
  - GNU screen
  - tmux
  - Zellij

<div class="mt-18 text-2xl" v-click>
  よくわからんけど、すごい
</div>

---

<div class="flex flex-col items-center justify-center w-full h-full">
  <div class="text-center space-y-4">
    <div class="text-3xl text-indigo-400 font-bold" v-click="1">🧑‍💻 すごい人が作ってて</div>
    <div class="text-3xl text-green-400 font-bold" v-click="2">⚡ 開発が早くて</div>
    <div class="text-3xl text-yellow-400 font-bold" v-click="3">🚀 動作が速くて</div>
    <div class="text-3xl text-pink-400 font-bold" v-click="4">✨ すごい機能が入った</div>
    <div class="text-5xl text-white font-bold mt-8" v-click="5">ターミナル</div>
  </div>
</div>

---

<div class="w-full h-full flex flex-col items-center justify-center">
  <img src="https://raw.githubusercontent.com/wezterm/wezterm/main/assets/icon/wezterm-icon.svg">
  <h1 class="pt-4">WezTerm</h1>
</div>

--- 

<div class="flex flex-col items-center justify-center w-full h-full">
  <div class="grid grid-cols-2">
    <img class="h-full px-2" src="./images/default_terminal_screenshot.png" />
    <img class="h-full px-2" src="./images/wezterm_screenshot.png" v-click />
  </div>
</div>

---

<div class="grid grid-cols-2 h-full">
  <div>
    <h1>使用ツール</h1>
    <ul>
      <li><a href="https://wezterm.org/">WezTerm</a></li>
      <li><a href="https://www.nordtheme.com/">Nord theme</a></li>
      <li><a href="https://starship.rs/">Starship</a></li>
      <li><a href="https://github.com/eza-community/eza">eza</a></li>
    </ul>
  </div>
  <div class="flex items-center justify-center h-full">
    <img class="px-2" src="./images/wezterm_screenshot.png" />
  </div>
</div>

---
layout: center
---

# 私のおすすめポイント

---

<div class="flex justify-center place-items-center w-full h-full">
  <img class="h-48" src="https://upload.wikimedia.org/wikipedia/commons/c/cf/Lua-Logo.svg" v-motion :enter="{x:90 }" :click-1="{ x:-80 }">
  <img class="h-36" src="https://avatars.githubusercontent.com/u/6471485" v-click>
</div>

---

### wezterm.lua

```lua
-- WezTerm APIを読み込む
local wezterm = require 'wezterm'
-- 設定を保持
local config = wezterm.config_builder()


-- ここから実際に設定を適用

-- 例: 新しいウィンドウの初期サイズを変更
config.initial_cols = 120
config.initial_rows = 28


-- 例: フォントサイズとカラースキームを変更
config.font_size = 10
config.color_scheme = 'AdventureTime'


-- 最後に、設定をWezTermに返す
return config
```

---

### wezterm.lua

```lua {all|6-22}
local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- 省略 --

wezterm.on("toggle-opacity", function(window) 
  -- ウィンドウに適用されている設定を取得 設定がなければ初期化
  local overrides = window:get_config_overrides() or {} 
  if not overrides.window_background_opacity then 
      overrides.window_background_opacity = 1.0 
  end

  -- 不透明度が1.0（完全に不透明）以上であれば、不透明度を0.6（半透明）に設定
  if overrides.window_background_opacity >= 1.0 then 
      overrides.window_background_opacity = 0.6 
  -- 不透明度を1.0（完全に不透明）に設定
  else 
    overrides.window_background_opacity = 1.0 
  end
  
  window:set_config_overrides(overrides)  -- 設定を適用
end)

return config
```

---
layout: section
---

# CLI

---
layout: center
---
<div v-motion :click-1="{y: -50}">
```sh
$ wezterm cli send-text "hello"
```
</div>

<v-click>
```sh
$ wezterm cli split-pane
```
</v-click>

---

```sh {all|9-12|17-20}
#!/bin/zsh

readonly WORK_DIR="${HOME}/src/tmp/mock-dev-env"

open /Applications/WezTerm.app

tab_name=main

# create pane
pane1_id=$(wezterm cli spawn --cwd $WORK_DIR)
pane2_id=$(wezterm cli split-pane --bottom --percent 60 --pane-id $pane1_id)
pane3_id=$(wezterm cli split-pane --right --percent 50 --pane-id $pane1_id)

# set title
wezterm cli set-tab-title --pane-id $pane1_id $tab_name

# set command
echo 'docker compose run --rm ascii-art make frontend\n' | wezterm cli send-text --pane-id $pane1_id --no-paste
echo 'docker compose run --rm ascii-art make rails\n' | wezterm cli send-text --pane-id $pane2_id --no-paste
echo 'docker compose run --rm ascii-art make db\n' | wezterm cli send-text --pane-id $pane3_id --no-paste
```

---
layout: section
---

# デモ

---

# Install

<div class="grid grid-cols-2">
  <div class="text-center">
    <h2>Windows</h2>
    <div class="mt-24">
      <a href="https://wezterm.org/install/windows.html">https://wezterm.org/install/windows.html</a>
      <div class="my-12">or</div>
      <code>winget install wez.wezterm</code>
    </div>
  </div>
  <div class="text-center">
    <h2>macOS</h2>
    <div class="mt-24">
      <a href="https://wezterm.org/install/macos.html">https://wezterm.org/install/macos.html</a>
      <div class="my-12">or</div>
      <code>brew install --cask wezterm</code>
    </div>
  </div>
</div>

---

## 比較（参考）

| 項目 | Windows Terminal | Terminal.app | Tera Term | iTerm2 | Alacritty | WezTerm |
|---|---|---|---|---|---|---|
| 対応OS | Windows | macOS | Windows | macOS | Windows, macOS, Linux | Windows, macOS, Linux |
| 開発言語 | C++ | Apple純正 | 不明 | Objective-C | Rust | Rust |
| タブ機能 | ○ | ○ | ○ | ○ | - | ○ |
| スプリットペイン | ○ | - | - | ○ | - | ○ |
| GPUアクセラレーション | ○ | - | - | - | ○ | ○ |

---

## 比較（参考）

| 項目 | Windows Terminal | Terminal.app | Tera Term | iTerm2 | Alacritty | WezTerm |
|---|---|---|---|---|---|---|
| Unicode/UTF-8対応 | ○ | ○ | ○ | ○ | ○ | ○ |
| カスタマイズ性 | 高い | 中くらい | 低～中 | 高い | 高い | 非常に高い |
| 拡張性 | - | - | - | 豊富 | - | - |
| 背景画像・テーマ | ○ | - | - | ○ | ○ | ○ |
| セッション・ワークスペース管理 | -  | - | - | セッション機能あり | - | Workspace機能あり |
| リリース年 | 2019 | 2001 | 1994 | 2007 | 2017 | 2020 |

---
layout: center
---

# モテるターミナルを作りましょう!