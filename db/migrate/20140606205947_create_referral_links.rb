class CreateReferralLinks < ActiveRecord::Migration
  def change
    create_table :referral_links do |t|
      t.string :name
      t.string :url

      t.timestamps
    end
  end
end
