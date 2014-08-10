class Po < ActiveRecord::Base
  has_one :supplier
  has_many :orders
  accepts_nested_attributes_for :orders, :allow_destroy => true
  
  def my_supplier(supplier)
    my_supplier = Supplier.where(id: supplier)
    my_supplier[0].name 
  end

end
