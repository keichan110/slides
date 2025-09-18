---
layout: two-cols
class: problem-slide
---

# Q20

```ruby
# app/models/user.rb
class OrderService
  def self.create_order(user_id, product_id, quantity)
    user = User.find(user_id)
    product = Product.find(product_id)

    if Time.current.hour < 9 || Time.current.hour > 18
      raise "営業時間外です"
    end

    if product.stock < quantity
      raise "在庫不足です"
    end

    order = Order.create!(...)

    Rails.logger.info "注文が作成されました: #{order.id}"
    order
  end
end
```

::right::

# ヒント

<div v-click="1" class="text-gray-400">

・ `Time.current`に依存してる...テストの時に時間固定できないじゃん

</div>

<div v-click="2" class="mt-2 text-gray-400">

・ これじゃ営業時間チェックのテスト書けないなあ

</div>

---

<h1>Q20<span class="text-sm text-gray-600 ml-4">テストしにくいコード</span></h1>

## 問題点

- 現在時刻に依存（テストが困難）
- 複数の責務が混在
- ログ出力が混在

## 改善のポイント

- **依存性注入**で時刻をテスタブルに
- **責務分割**で各メソッドを単一目的に
- **設計パターン**でテストしやすい構造

---
layout: two-cols
---

<h1>Q20<span class="text-sm text-gray-600 ml-4">テストしにくいコード</span></h1>

## ❌ 改善前

```ruby
class OrderService
  def self.create_order(user_id, product_id, quantity)
    user = User.find(user_id)
    product = Product.find(product_id)

    if Time.current.hour < 9 || Time.current.hour > 18
      raise "営業時間外です"
    end

    if product.stock < quantity
      raise "在庫不足です"
    end

    order = Order.create!(...)
    Rails.logger.info "注文が作成されました: #{order.id}"
    order
  end
end
```

**問題:** 時刻固定でテストできない

::right::

## ✅ 改善後

```ruby
class OrderService
  def initialize(user_param:, product_param:, quantity_param:,
                 current_time: Time.current)
    @user = user_param
    @product = product_param
    @quantity = quantity_param
    @current_time = current_time
  end

  def create_order
    validate_business_hours!
    validate_stock!

    order = Order.create!(
      user => @user, product => @product, quantity => @quantity
    )
    OrderLogger.info("注文が作成されました: #{order.id}")
    order
  end

  private
  def validate_business_hours!
    hour = @current_time.hour
    raise "営業時間外です" if hour < 9 || hour > 18
  end
end
```