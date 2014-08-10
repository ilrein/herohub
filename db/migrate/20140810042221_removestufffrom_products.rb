class RemovestufffromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :orderlist_id
    remove_column :products, :instanceAmount
    add_column :products, :classification, :string
  end
end
