FactoryBot.define do
  factory :user do
    email                 { Faker::Internet.email }
    password              { "secretPassw0rd" }
    password_confirmation { "secretPassw0rd" }
    confirmed_at          { Time.zone.today }
  end
end
