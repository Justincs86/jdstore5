module OrdersHelper
  def render_order_paid_state(order)
    if !order.is_paid?
      "Unpaid"
    else
      "Paid"
    end
  end

end
