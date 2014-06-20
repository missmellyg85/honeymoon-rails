class RenamePromoColumnStart < ActiveRecord::Migration
  def change
  	rename_column :promos, :state_date, :start_date
  end
end
