TAX_RATE = 0.08 # 消費税率

# 価格と数量から税額を計算する
def calculate_tax(price, quantity)
  total_price = price * quantity
  total_price * TAX_RATE
end

# calculate_tax(100, 2) => 16.0
