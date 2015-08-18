class Hotel < ActiveRecord::Base
	validates :hotel_name, :about_hotel, :address, :latitude, :longitude, presence: true
	has_many :hotel_features
end
