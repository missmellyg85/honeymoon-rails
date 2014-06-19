class Destination < ActiveRecord::Base
	has_many :islands, dependent: :destroy

	accepts_nested_attributes_for :islands
end
