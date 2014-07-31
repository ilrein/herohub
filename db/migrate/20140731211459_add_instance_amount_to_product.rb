class AddInstanceAmountToProduct < ActiveRecord::Migration
  def change
    add_column :products, :instanceAmount, :integer
  end
end
