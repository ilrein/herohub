class AddOrderIdToPos < ActiveRecord::Migration
  def change
    add_column :pos, :order_id, :integer
  end
end
