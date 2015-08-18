require 'faker'

FactoryGirl.define do 
	factory :hotel_feature do
		name {Faker::Name.title}
	end
	
end