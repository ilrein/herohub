class ProductsController < ApplicationController
before_action :authenticate_user!
  def index
  	@products = Product.all
  end

  def create
  end

  def update
  end

  def destroy
  end
end
