class AddPathToReferral < ActiveRecord::Migration
  def change
  	add_column :referral_links, :path, :string, after: :url
  end
end
