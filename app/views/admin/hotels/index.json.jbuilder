json.array!(@hotels) do |hotel|
  json.extract! hotel, :hotel_name, :about_hotel, :address, :latitude, :longitude
  json.url hotel_url(hotel, format: :json)
end