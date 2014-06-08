class CreateHotelPictures < ActiveRecord::Migration
  def change
    create_table :hotel_pictures do |t|
      t.string :path
      t.integer :hotel_id

      t.timestamps
    end
  end
end
