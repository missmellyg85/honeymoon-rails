class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.string :Name
      t.string :Path

      t.timestamps
    end
  end
end
