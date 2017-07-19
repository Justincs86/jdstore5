class Admin::OrdersController < ApplicationController
  before_action :authenticite_user!
  before_action :admin_required

  def index
    @orders = Order.order("id DESC")
  end

  
end
