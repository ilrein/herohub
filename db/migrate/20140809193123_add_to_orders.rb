class AddToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :po_id, :integer
  end
end
