def create
  # 単一責任：注文作成とレスポンス処理のみ
  @order = Order.new(order_params)
    
  if @order.save
    # 非同期でメール送信
    OrderMailer.created(@order).deliver_later
    redirect_to @order
  else
    render :new
  end
end

private

def order_params
  params.require(:order).permit(
    :product_id, :quantity, :user_id
  )
end
