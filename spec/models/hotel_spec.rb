require 'rails_helper'

describe Hotel do 
  it { should validate_presence_of(:hotel_name) }
  it { should validate_presence_of(:about_hotel) }
  it { should validate_presence_of(:address) }
  it { should validate_presence_of(:latitude) }
  it { should validate_presence_of(:longitude) }
  it { should have_many(:hotel_features) }
end