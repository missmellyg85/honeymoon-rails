class MoreColumnNamesToLowerCase < ActiveRecord::Migration
  def change
    rename_column :hotel_pictures, :Path, :path
    rename_column :hotel_pictures, :Hotel_Id, :hotel_id
  end
end
