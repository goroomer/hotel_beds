require "hotel_beds/parser"

module HotelBeds
  module Parser
    class Stars
      include HotelBeds::Parser
      # attributes
      attribute :type, attr: "type"
      attribute :code, attr: "code"
    end
  end
end
