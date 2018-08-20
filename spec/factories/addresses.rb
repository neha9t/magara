FactoryBot.define do
  factory :address do
    address_1 { Faker::Address.street_address }
    address_2 { Faker::Address.secondary_address }
    city      { Faker::Address.city }
    state     { Faker::Address.state_abbr }
    zip_code  { '90403' }
  end
end
