class Location < ActiveRecord::Base
	belongs_to :company
  validates :address, presence: true
end
