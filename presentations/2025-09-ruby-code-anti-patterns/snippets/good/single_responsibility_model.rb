class Order < ApplicationRecord
  validates :quantity, presence: true
  validate :sufficient_stock
  before_save :apply_discount

  private

  # 在庫チェック
  def sufficient_stock
    if product.stock < quantity
      errors.add(:quantity, '在庫不足です') 
    end
  end

  # 割引計算
  def apply_discount
    self.discount = total * 0.1 if user.premium?
  end
end
