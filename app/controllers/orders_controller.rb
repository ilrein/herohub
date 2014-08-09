class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end
  def new
    @order = Order.new
    @po = Po.new
  end
  def create
      #pid = params[:product_id].to_i
      #quantity = params[:quantity].to_i
      
      @po = Po.new(order_params)


     binding.pry
      if @po.save
        redirect_to root_url
      else
        redirect_to products_index_path 
      end
    end
    def show
      @order = Order.find(params[:id]
)    end
    private
    def order_params
      params.require(:po).permit(:supplier_id, orders_attributes: [:product_id, :quantity])
    end

  end
