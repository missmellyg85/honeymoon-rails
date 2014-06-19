class HotelIslandIdToInt < ActiveRecord::Migration
  def change
  	change_column :hotels, :island_id, :integer
  end
end
