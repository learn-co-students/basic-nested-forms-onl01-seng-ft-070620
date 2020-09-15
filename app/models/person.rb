class Person < ActiveRecord::Base
  has_many :addresses
  # this creates the #addresses_attributes method for us
  # allows us to create a person object and mutltiple address objects at once
  accepts_nested_attributes_for :addresses
end
