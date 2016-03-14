require "hotel_beds/parser"

module HotelBeds
  module Parser
    class CancellationPolicy
      include HotelBeds::Parser

      attribute :amount, attr: "amount"
      attribute :from_date, attr: "dateFrom"
      attribute :from_time, attr: "time"

      attribute :add_to_cart_from_date, selector: "DateTimeFrom", attr: "date"
      attribute :add_to_cart_from_time, selector: "DateTimeFrom", attr: "time"
      attribute :add_to_cart_end_date, selector: "DateTimeTo", attr: "date"
      attribute :add_to_cart_amount, selector: "Amount"

    end
  end
end
