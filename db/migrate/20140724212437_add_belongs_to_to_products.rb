class AddBelongsToToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :orderlist_id, :integer
  end
end
