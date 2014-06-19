class Destination < ActiveRecord::Base
	has_many :islands

	accepts_nested_attributes_for :islands
end
