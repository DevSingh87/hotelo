require 'rails_helper'

describe Hotel do 
  it { should validate_presence_of(:hotel_name) }
  it { should validate_presence_of(:about_hotel) }
  it { should validate_presence_of(:address) }
  it { should validate_presence_of(:latitude) }
  it { should validate_presence_of(:longitude) }
  it { should have_many(:hotel_features) }

  it "has many hotel features" do
    hotel = FactoryGirl.create(:hotel)
    hotel_feature1 = FactoryGirl.create(:hotel_feature, hotel_id: hotel.id)
    hotel_feature2 = FactoryGirl.create(:hotel_feature, hotel_id: hotel.id)
    expect(hotel.hotel_features).to include(hotel_feature1, hotel_feature2)
  end
end