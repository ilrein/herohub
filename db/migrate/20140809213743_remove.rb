class Remove < ActiveRecord::Migration
  def change
    remove_column :pos, :order_id
  end
end
