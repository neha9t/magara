FactoryBot.define do
  factory :house do
    rent             850
    deposit          600
    description      "Lorem ipsum dolor sit amet"
    preferred_gender 0

    trait :either do
      preferred_gender 0
    end

    trait :female do
      preferred_gender 1
    end

    trait :male do
      preferred_gender 2
    end
  end
end
