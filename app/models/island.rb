class Island < ActiveRecord::Base
	belongs_to :destination
	has_many :hotels
end
