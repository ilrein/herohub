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

    respond_to do |format|
      format.html
      format.json { render json: @products }
    end
  end

  def show
    @product = Product.find(params[:id])
  end
end
