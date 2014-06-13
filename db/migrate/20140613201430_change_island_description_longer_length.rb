class ChangeIslandDescriptionLongerLength < ActiveRecord::Migration
  def change
   change_column :islands, :description, :string, :limit=>2000
  end
end
