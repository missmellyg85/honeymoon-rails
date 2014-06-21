class Destination < ActiveRecord::Base
	has_many :islands, dependent: :destroy

	accepts_nested_attributes_for :islands,
                                :allow_destroy => true,
                                :reject_if => lambda { |a| a[:name].blank? && a[:description].blank? }
end
