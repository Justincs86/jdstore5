class OrderMailer < ApplicationMailer
  def notify_order_placed(order)
    @order      = order
    @user       = order.user
    @product_lists = @order.product_lists

    mail(to: @user.email, subject: "[JDStore] Thanks for you shopping, this is your order #{@order.token}")
  end

end
