class CreatePos < ActiveRecord::Migration
  def change
    create_table :pos do |t|
      t.integer :supplier_id

      t.timestamps
    end
  end
end
