FactoryBot.define do
  factory :checkbox do
    air_conditioning { Faker::Boolean.boolean }
    balcony          { Faker::Boolean.boolean }
    furnished        { Faker::Boolean.boolean }
    include_utility  { Faker::Boolean.boolean }
    pets_allowed     { Faker::Boolean.boolean }
    private_bathroom { Faker::Boolean.boolean }
    private_bedroom  { Faker::Boolean.boolean }
    refrigerator     { Faker::Boolean.boolean }
    near_bus_line    { Faker::Boolean.boolean }
    smoke_allowed    { Faker::Boolean.boolean }
  end
end
