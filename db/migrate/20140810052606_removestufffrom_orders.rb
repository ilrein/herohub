class RemovestufffromOrders < ActiveRecord::Migration
  def change
    remove_column :orders, :supplier_id
  end
end
