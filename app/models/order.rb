class Order < ActiveRecord::Base
  has_many :products
  belongs_to :po
  validates :product_id, presence: true, numericality: true
  validates :quantity, presence: true, numericality: true

  def my_product(product_id)
    @my_product = Product.where(id: product_id)
    @my_product[0].name
  end
end
