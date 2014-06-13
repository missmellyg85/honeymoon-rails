class ChangeOtherDescriptionsLongerLength < ActiveRecord::Migration
  def change
   change_column :promos, :description, :string, :limit=>2000
   change_column :customer_reviews, :comment, :string, :limit=>2000
  end
end
