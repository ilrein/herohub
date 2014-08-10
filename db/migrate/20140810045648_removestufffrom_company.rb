class RemovestufffromCompany < ActiveRecord::Migration
  def change
    remove_column :companies, :locations
  end
end
