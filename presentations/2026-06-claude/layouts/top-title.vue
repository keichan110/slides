<script setup>
import { computed } from 'vue'

const props = defineProps({
  color: { default: 'light' },
  align: { default: 'l' },
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

const alignment = computed(() => {
  switch (props.align) {
    case 'c': return 'ns-c-center ns-c-top'
    case 'r': return 'ns-c-right ns-c-top'
    default:  return 'ns-c-left ns-c-top'
  }
})

const colorscheme = computed(() => `neversink-${props.color}-scheme`)

const marginClass = computed(() => {
  switch (props.margin) {
    case 'tight':   return 'ns-c-tight-margin'
    case 'tighter': return 'ns-c-tighter-margin'
    case 'none':    return 'ns-c-no-margin'
    default:        return ''
  }
})
</script>

<template>
  <div class="flex flex-col h-full w-full">
    <div class="w-full h-fit min-h-13 pt-2 pb-2 slidecolor" :class="colorscheme">
      <div class="flex items-center ml-6 mr-6 mt-auto mb-auto">
        <div class="slidev-layout toptitle title p-0 pt-0" :class="alignment">
          <slot name="title" />
        </div>
        <div v-if="hasProducts" class="tt-product-badges">
          <span
            v-for="p in productList"
            :key="p.key"
            :class="['tt-product-badge', `badge-${p.state}`]"
          >{{ p.label }}</span>
        </div>
      </div>
    </div>
    <div class="slidev-layout toptitle content h-fit w-full" :class="marginClass">
      <slot name="content" />
    </div>
    <div v-if="$slots.default" class="slidev-layout default h-full w-full" :class="marginClass">
      <slot name="default" />
    </div>
  </div>
</template>

<style>
.tt-product-badges {
  display: flex;
  flex-direction: row;
  gap: 0.4rem;
  margin-left: 1rem;
  flex-shrink: 0;
}

.tt-product-badges .tt-product-badge {
  width: 4.5rem;
  text-align: center;
}

.tt-product-badge {
  display: inline-block;
  padding: 0.1em 0.6em;
  border-radius: 9999px;
  font-size: 0.5rem;
  font-weight: 500;
  letter-spacing: 0.02em;
  border: 1.5px solid var(--neversink-fg-color);
  font-family: var(--neversink-main-font);
  white-space: nowrap;
}

.tt-product-badge.badge-active {
  background-color: var(--neversink-fg-color);
  color: var(--neversink-bg-color);
}

.tt-product-badge.badge-partial {
  background-color: transparent;
  color: var(--neversink-fg-color);
  border-style: dashed;
}

.tt-product-badge.badge-inactive {
  background-color: transparent;
  color: var(--neversink-fg-color);
  border-style: solid;
  opacity: 0.25;
}
</style>
