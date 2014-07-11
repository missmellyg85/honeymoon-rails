class Hotel < ActiveRecord::Base
	belongs_to :island
  belongs_to :destination

	has_many :hotel_pictures, dependent: :destroy
end
