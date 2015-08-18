require 'faker'

FactoryGirl.define do
  factory :hotel do
    hotel_name {Faker::Name.title}
    about_hotel {Faker::Lorem.paragraph}
    address {Faker::Lorem.paragraph}
    latitude {Faker::Number.positive}
    longitude {Faker::Number.positive}
  end
end
