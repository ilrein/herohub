class Order < ActiveRecord::Base
  has_many :products
  validates :product_id, presence: true, numericality: true
  validates :quantity, presence: true, numericality: true
end
