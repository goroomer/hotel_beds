require "hotel_beds/parser"

module HotelBeds
  module Parser
    class Stars
      include HotelBeds::Parser
      # attributes
      attribute :type, attr: "type"
      attribute :code, attr: "code"
      attribute :shortname, attr: "shortname"
    end
  end
end
