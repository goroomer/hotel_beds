require "hotel_beds/model"

module HotelBeds
  module Model
    class CancellationPolicy
      include HotelBeds::Model

      # attributes
      attribute :amount, BigDecimal
      attribute :from_date, String
      attribute :from_time, String
    end
  end
end
