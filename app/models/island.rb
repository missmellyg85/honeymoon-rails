class Island < ActiveRecord::Base
    belongs_to :destination
    has_many :hotels

    accepts_nested_attributes_for :hotels
end
