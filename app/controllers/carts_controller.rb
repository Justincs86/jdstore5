class CartsController < ApplicationController
  before_action :authenticate_user!

  def clean
    current_cart.clean!
    flash[:alert] = "Delete Selected Items"
    redirect_to carts_path
  end

  def checkout
    @order = Order.new
  end

end
