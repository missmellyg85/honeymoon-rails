class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string :Name
      t.string :Description
      t.string :Island_Id

      t.timestamps
    end
  end
end
