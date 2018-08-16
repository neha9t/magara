FactoryBot.define do
  factory :checkbox do
    air_conditioning false
    balcony          false
    furnished        false
    include_utility  false
    pets_allowed     false
    private_bathroom false
    private_bedroom  false
    refrigerator     false
    near_bus_line    false
    smoke_allowed    false
  end
end
