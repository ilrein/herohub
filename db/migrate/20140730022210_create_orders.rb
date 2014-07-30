class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :quantity
      t.belongs_to :product

      t.timestamps
    end
  end
end
