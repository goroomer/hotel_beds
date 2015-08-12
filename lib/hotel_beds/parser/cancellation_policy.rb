require "hotel_beds/parser"

module HotelBeds
  module Parser
    class CancellationPolicy
      include HotelBeds::Parser

      attribute :amount, attr: "amount"
      attribute :from_date, attr: "dateFrom"
      attribute :from_time, attr: "time"

    end
  end
end
