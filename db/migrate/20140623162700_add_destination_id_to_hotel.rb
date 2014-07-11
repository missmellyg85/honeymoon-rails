class AddDestinationIdToHotel < ActiveRecord::Migration
  def change
      add_column :hotels, :destination_id, :integer
  end
end
