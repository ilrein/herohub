class ProductsController < ApplicationController
  def new
  end

  def create
    @order = Order.new(params[:id])
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end
end
