class OrdersController < ApplicationController
  def index
  end

  def new
    @order_address = OrderAddress.new
  end

  def create
  end
end
