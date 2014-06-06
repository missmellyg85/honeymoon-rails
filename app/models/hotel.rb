class Hotel < ActiveRecord::Base
	belongs_to :island
	has_many :hotel_pictures
end
