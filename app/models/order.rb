class Order < ActiveRecord::Base
  has_one :product
  belongs_to :po
  validates :product, presence: true, numericality: true
  validates :quantity, presence: true, numericality: true

  def my_product(product_id)
    @my_product = Product.where(id: product_id)
    @my_product[0].name
  end
end
