class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.integer :location_id
    end
  end
end
