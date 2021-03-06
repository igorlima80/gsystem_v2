class Address < ApplicationRecord
  belongs_to :city
  belongs_to :addressable, polymorphic: true, optional: true

  def full_address
    "#{street}#{', ' unless number.blank?}#{number}#{'. CEP ' unless zipcode.blank?}#{zipcode}#{'. ' unless complement.blank?}#{complement}#{'. Bairro: ' unless district.blank?}#{district}#{'. ' if city}#{city.name_with_state if city}"
  end

  def geo_address
    # [street, number, city&.name, city&.state&.name, 'Brasil'].compact.join(', ')
    [city&.name, city&.state&.name, 'Brasil'].compact.join(', ')
  end
end
