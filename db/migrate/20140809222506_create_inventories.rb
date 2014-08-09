class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.integer :location_id

      t.timestamps
    end
  end
  
  def change
    add_column :products, :classification, :string
  end
end
