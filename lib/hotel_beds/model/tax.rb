require "hotel_beds/model"

module HotelBeds
  module Model
    class Tax
      include HotelBeds::Model
      # attributes
      attribute :included, String
      attribute :percent, BigDecimal
      attribute :import, BigDecimal
    end
  end
end
