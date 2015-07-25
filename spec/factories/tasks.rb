FactoryGirl.define do
  factory :task do
    title { Faker::Lorem.sentence(4) }
  end
end
