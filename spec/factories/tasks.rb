FactoryGirl.define do
  factory :task do
    title { Faker::Lorem.sentence(4) }
    description { Faker::Lorem.paragraph() }
  end
end
