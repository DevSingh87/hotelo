require 'rails_helper'

describe HotelFeature do 
  it { should validate_presence_of(:name) }
  it { should belong_to(:hotel)}
  
  it "belongs to Hotel" do
    hotel = FactoryGirl.create(:hotel)
    hotel_feature = FactoryGirl.create(:hotel_feature, hotel_id: hotel.id)
    expect(hotel.hotel_features.first).to eq(hotel_feature)
  end
end