class Hotel < ActiveRecord::Base
	belongs_to :island
	has_many :hotel_pictures

    validates_presence_of :island_id
end
