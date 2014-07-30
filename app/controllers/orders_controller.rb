class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end
  def create
      pid = params[:product_id].to_i
      quantity = params[:quantity].to_i
      
      @order = Order.create({:product_id => pid, :quantity => quantity})

      if @order.save
        redirect_to root_url
      else
        redirect_to products_index_path
      end
  end
  def show
    @order = Order.find(params[:id])
  end
  private
  def order_params
    params.require(:order).permit(:product_id, :quantity)
  end
end

#ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'orders'")