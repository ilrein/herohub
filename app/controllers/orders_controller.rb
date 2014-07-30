class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end
  def create
    @order = Order.create(params[:order])

    if request.xhr?
      render :partial => 'order'
    end
  end
  private
  def order_params
    params.require(:order).permit(:product_id, :quantity)
  end
end