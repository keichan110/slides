def process_order(order_params)
  # 注文データの作成
  order = Order.new(order_params)

  # 在庫チェック
  if order.product.stock < order.quantity
    return { error: "在庫不足" }
  end

  # 割引計算
  discount = 0
  if order.user.premium?
    discount = order.total * 0.1
  end
  order.discount = discount

  # メール送信とか在庫更新とか...
  # 長いので省略
end