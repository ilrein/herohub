class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end
  def create
    @order = Order.new(params[:order])
  end
end
