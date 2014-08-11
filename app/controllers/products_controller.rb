class ProductsController < ApplicationController
  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to root_url
    else
      redirect_to products_index_path 
    end
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
  private
  def product_params
    params.require(:product).permit(:name, :stocknum, :classification)
  end
end
