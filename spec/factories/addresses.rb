FactoryBot.define do
  factory :address do
    address_1 { '300 Pico Blvd.' }
    address_2 { 'Apt. 2' }
    city      { 'Santa Monica' }
    state     { 'CA' }
    zip_code  { '90403' }
  end
end
