require "hotel_beds/model"

module HotelBeds
  module Model
    class Tax
      include HotelBeds::Model
      # attributes
      attribute :included, String
      attribute :percent, BigDecimal
      attribute :import, BigDecimal

      # validation
      validates :included, length: { is: 1 }
      validates :percent, numericality: { greater_than: 0, only_integer: true }
      validates :import, numericality: { greater_than: 0, only_integer: true }
    end
  end
end
