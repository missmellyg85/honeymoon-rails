class CreateCustomerReviews < ActiveRecord::Migration
  def change
    create_table :customer_reviews do |t|
      t.string :comment, :limit=>1000
      t.string :name
      t.string :email
      t.string :status
      t.boolean :is_deleted

      t.timestamps
    end
  end
end
