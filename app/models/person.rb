class Person < ActiveRecord::Base
  has_many :addresses
  # accepts_nested_attributes_for :addresses

  def addresses_attributes=(addresses_attributes)
    # addresses_attributes = {"0"=>{"street_address_1"=>"605 SW 36th St.", "street_address_2"=>"", "city"=>"Cape Coral", "state"=>"FL", "zipcode"=>"", "address_type"=>"work"}, "1"=>{"street_address_1"=>"6357 3rd Ave", "street_address_2"=>"", "city"=>"St Petersburg", "state"=>"FL", "zipcode"=>"", "address_type"=>"home"}}
    addresses_attributes.values.each do |address_attributes|
      self.addresses.build(address_attributes)
    end
  end

end
