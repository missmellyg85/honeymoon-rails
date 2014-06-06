class CreatePromos < ActiveRecord::Migration
  def change
    create_table :promos do |t|
      t.string :description
      t.string :path
      t.timestamp :state_date
      t.timestamp :end_date

      t.timestamps
    end
  end
end
