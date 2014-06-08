class ColumnNamesToLowerCase < ActiveRecord::Migration
  def change
  	rename_column :destinations, :Name, :name
  	rename_column :destinations, :Path, :path
  	rename_column :islands, :Name, :name
    rename_column :islands, :Description, :description
    rename_column :islands, :Destination_Id, :destination_id
  	rename_column :hotels, :Name, :name
    rename_column :hotels, :Description, :description
    rename_column :hotels, :Island_Id, :island_id
  end
end