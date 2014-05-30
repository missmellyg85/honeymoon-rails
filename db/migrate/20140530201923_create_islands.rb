class CreateIslands < ActiveRecord::Migration
  def change
    create_table :islands do |t|
      t.string :Name
      t.string :Description
      t.integer :Destination_Id

      t.timestamps
    end
  end
end
