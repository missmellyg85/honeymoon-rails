class Destination < ActiveRecord::Base
	has_many :islands, dependent: :destroy
  has_many :hotels, dependent: :destroy

	accepts_nested_attributes_for :islands,
                                :allow_destroy => true,
                                :reject_if => lambda { |a| a[:name].blank? && a[:description].blank? }

  accepts_nested_attributes_for :hotels,
                                :allow_destroy => true,
                                :reject_if => lambda { |a| a[:name].blank? && a[:description].blank? }
end
