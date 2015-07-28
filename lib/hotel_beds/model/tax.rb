require "hotel_beds/model"

module HotelBeds
  module Model
    class Tax
      include HotelBeds::Model
      # attributes
      attribute :included, String
      attribute :percent, BigDecimal
      attribute :import, BigDecimal

      validates :included, length: { is: 1 }
      validates :percent, numericality: { greater_than: 0, only_integer: true }
      validates :percent, import: { greater_than: 0, only_integer: true }
    end
  end
end
