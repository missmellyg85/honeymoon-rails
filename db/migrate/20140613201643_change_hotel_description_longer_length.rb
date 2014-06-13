class ChangeHotelDescriptionLongerLength < ActiveRecord::Migration
  def change
   change_column :hotels, :description, :string, :limit=>2000
  end
end
