require "hotel_beds/model/hotel"
require "hotel_beds/model/supplier"
require "hotel_beds/model/reference"
require "hotel_beds/model/available_room"

module HotelBeds
  module Model
    class HotelService < Hotel
      # attributes
      attribute :id, String
      attribute :type, String
      attribute :status, String
      attribute :date_from, Date
      attribute :date_to, Date
      attribute :currency, String
      attribute :amount, BigDecimal
      attribute :supplier, HotelBeds::Model::Supplier
      attribute :reference, HotelBeds::Model::Reference
      attribute :available_room, HotelBeds::Model::AvailableRoom
    end
  end
end
