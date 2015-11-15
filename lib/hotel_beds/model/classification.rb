module HotelBeds
  module Model
    class Classification
      include HotelBeds::Model

      attribute :code, String
      attribute :type, String
    end
  end
end