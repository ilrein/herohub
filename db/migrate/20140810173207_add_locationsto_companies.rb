class AddLocationstoCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :locations, :integer
  end
end
