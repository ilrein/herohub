class Order < ActiveRecord::Base
  has_many :products
  belongs_to :supplier
  validates :product_id, presence: true, numericality: true
  validates :quantity, presence: true, numericality: true
  validates :supplier_id, presence: true, numericality: true
end
