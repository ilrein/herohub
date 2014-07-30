class ProductsController < ApplicationController
  def new
  end

  def create
    #@order = Order.new(params[:])
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
    @products = Product.all

    if request.xhr?
      render :partial => 'product'
    end
  end

  def show
    @product = Product.find(params[:id])
  end
end
