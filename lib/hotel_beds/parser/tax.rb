require "hotel_beds/parser"

module HotelBeds
  module Parser
    class Tax
      include HotelBeds::Parser
      # attributes
      attribute :included, attr: "included"
      attribute :percent, attr: "percent"
      attribute :import, attr: "import"
    end
  end
end
