class OrderListsController < ApplicationController
  def index
  	@orderlist = OrderList.first
  end
end
