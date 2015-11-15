require 'hotel_beds/model'
require 'hotel_beds/model/comment'
require 'hotel_beds/model/classification'

module HotelBeds
  module Model
    class Contract
      include HotelBeds::Model

      # attributes
      attribute :name, String
      attribute :incoming_office_code, String
      attribute :comments, Array[HotelBeds::Model::Comment]
      attribute :classification, HotelBeds::Model::Classification
    end
  end
end
