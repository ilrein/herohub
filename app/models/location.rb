class Location < ActiveRecord::Base
	belongs_to :company
  has_one :inventory
  has_many :products, through: :inventory
  validates :address, presence: true
  geocoded_by :address
  after_validation :geocode
end
