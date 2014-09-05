class Contact
 include ActiveModel::Serialization
 extend ActiveModel::Naming
 include ActiveModel::Conversion
 
 attr_accessor :name, :phone, :email, :occasion, :locations
 
 def initialize(attributes = {})
  @name=attributes[:name]
  @phone=attributes[:phone]
  @email=attributes[:email]
  @occasion=attributes[:occasion]
  @locations=attributes[:locations]
 end
  
# persisted is important not to get "undefined method `to_key' for" error
 def persisted?
  false
 end
  
end