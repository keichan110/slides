<script setup>
import { computed } from 'vue'

const props = defineProps({
  color: { default: 'white' },
  margin: { default: 'normal' },
  products: { default: () => ({}) },
})

const ALL_PRODUCTS = [
  { key: 'claude', label: 'Claude' },
  { key: 'claude-code', label: 'Claude Code' },
  { key: 'cowork', label: 'Claude Cowork' },
]

const productList = computed(() => {
  const active = props.products?.active ?? []
  const partial = props.products?.partial ?? []
  return ALL_PRODUCTS.map(p => ({
    ...p,
    state: active.includes(p.key) ? 'active'
         : partial.includes(p.key) ? 'partial'
         : 'inactive',
  }))
})

const hasProducts = computed(() => {
  const a = props.products?.active ?? []
  const p = props.products?.partial ?? []
  return a.length > 0 || p.length > 0
})

const colorscheme = computed(() => `neversink-${props.color}-scheme`)

const marginClass = computed(() => {
  switch (props.margin) {
    case 'tight': return 'ns-c-tight-margin'
    case 'tighter': return 'ns-c-tighter-margin'
    case 'none': return 'ns-c-no-margin'
    default: return ''
  }
})
</script>

<template>
  <div class="slidev-layout section slidecolor" :class="[colorscheme, marginClass]">
    <div class="my-auto">
      <slot />
      <div v-if="hasProducts" class="product-badges">
        <span
          v-for="p in productList"
          :key="p.key"
          :class="['product-badge', `badge-${p.state}`]"
        >{{ p.label }}</span>
      </div>
    </div>
  </div>
</template>

<style>
.slidev-layout.section {
  display: grid;
  height: 100%;
  font-family: var(--neversink-main-font);
  font-weight: 300;
}

.slidev-layout.section hr {
  border: 0;
  border-top: 1px solid var(--neversink-border-color);
  margin: 0;
  margin-bottom: 0.5rem;
  margin-top: 0.5rem;
}

.slidev-layout.section h1 {
  font-family: var(--neversink-title-font);
  font-weight: 500;
  font-size: 2.8em;
  padding-bottom: 0.3rem;
  line-height: normal;
}

.slidev-layout.section h2 {
  font-family: var(--neversink-title-font);
  font-weight: 500;
  font-size: 2.5em;
  line-height: normal;
}

.slidev-layout.section h3 {
  font-family: var(--neversink-title-font);
  font-weight: 500;
  font-size: 1.9em;
  line-height: normal;
}

.slidev-layout.section strong {
  font-weight: 500;
}

.slidev-layout.section h1 + p,
.slidev-layout.section h2 + p,
.slidev-layout.section h3 + p {
  padding: 0;
  margin: 0;
  opacity: 1;
}

.product-badges {
  display: flex;
  gap: 0.5rem;
  margin-top: 1.2rem;
  flex-wrap: wrap;
}

.product-badge {
  display: inline-block;
  padding: 0.2em 0.8em;
  border-radius: 9999px;
  font-size: 0.65em;
  font-weight: 500;
  letter-spacing: 0.02em;
  border: 1.5px solid var(--neversink-fg-color);
  font-family: var(--neversink-main-font);
}

/* 完全対応: 塗りつぶし */
.badge-active {
  background-color: var(--neversink-fg-color);
  color: var(--neversink-bg-color);
}

/* 一部対応: 破線ボーダー、背景なし */
.badge-partial {
  background-color: transparent;
  color: var(--neversink-fg-color);
  border-style: dashed;
}

/* 非対応: 薄く表示 */
.badge-inactive {
  background-color: transparent;
  color: var(--neversink-fg-color);
  border-style: solid;
  opacity: 0.25;
}
</style>
