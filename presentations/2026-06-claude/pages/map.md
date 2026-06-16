---
layout: top-title
color: orange-light
slide_info: false
---

:: title ::

# 全体像

:: content ::

<div class="flex flex-col gap-6 w-full max-w-5xl mx-auto mt-10">

  <div>
    <div class="text-sm text-white/50 font-semibold mb-2 ml-1">拡張機能 — 作って増やす能力</div>
    <div class="border border-white/20 rounded-xl p-4">
      <div class="text-orange-300/90 text-base font-semibold text-center mb-3">Plugins でまとめて配布・共有</div>
      <div class="flex gap-2 w-full">
        <div class="flex-1 whitespace-nowrap border border-white/25 rounded-lg py-7 bg-white/5 text-center font-semibold text-xl">Hooks</div>
        <div class="flex-1 whitespace-nowrap border border-white/25 rounded-lg py-7 bg-white/5 text-center font-semibold text-xl">Skills</div>
        <div class="flex-1 whitespace-nowrap border border-white/25 rounded-lg py-7 bg-white/5 text-center font-semibold text-xl">Subagents</div>
        <div class="flex-1 whitespace-nowrap border border-white/25 rounded-lg py-7 bg-white/5 text-center font-semibold text-xl">MCP</div>
      </div>
    </div>
  </div>

  <div>
    <div class="text-sm text-white/50 font-semibold mb-2 ml-1">土台 — 書いておく設定・文脈</div>
    <div class="flex gap-2 w-full">
      <div class="flex-1 whitespace-nowrap border border-orange-400/50 rounded-lg py-7 bg-orange-400/10 text-center font-semibold text-xl">CLAUDE.md</div>
      <div class="flex-1 whitespace-nowrap border border-orange-400/50 rounded-lg py-7 bg-orange-400/10 text-center font-semibold text-xl">Auto Memory</div>
      <div class="flex-1 whitespace-nowrap border border-orange-400/50 rounded-lg py-7 bg-orange-400/10 text-center font-semibold text-xl">settings.json</div>
    </div>
  </div>

  <div class="text-center text-white/40 text-sm">Commands ＝ これら全体をセッション内から操作する組み込みインターフェース</div>

</div>

<!--
⏱ 約2分

ここが今日のカスタマイズの全体像です。下段が「土台」——CLAUDE.md・Auto Memory・settings.jsonの3つで、Claudeに「何を知っておいてほしいか／何をしてはいけないか」を書いておく層です。CLAUDE.mdは人間が書くルール、Auto MemoryはClaudeが自分で覚える側、settings.jsonは絶対に破れない制約、と役割が分かれています。

上段が「拡張機能」——Hooks・Skills・Subagents・MCPで、作ったり外部と繋いだりして能力を足していく層です。そしてこの4つをひとつの箱にまとめて配布・共有できるのがPluginsです。

Commandsはこれら全体をセッション内から操作する組み込みのインターフェースなので、図では脚注扱いにしています。

→ 次：それぞれを一つずつ見ていきます。まずは土台のCLAUDE.mdから
-->
