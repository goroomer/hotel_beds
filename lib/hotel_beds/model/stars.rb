require "hotel_beds/model"

module HotelBeds
  module Model
    class Stars
      include HotelBeds::Model
      # attributes
      attribute :type, String
      attribute :code, String
    end
  end
end
