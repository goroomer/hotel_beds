require "hotel_beds/parser"

module HotelBeds
  module Parser
    class CancellationPolicy
      include HotelBeds::Parser


      attribute :amount, attr: "amount"
      attribute :from_date, attr: "dateFrom"
      attribute :from_time, attr: "time"

      def from_date=(str)
        v = str.match(/^(\d{4})(\d{2})(\d{2})$/)
        super("#{v[1]}-#{v[2]}-#{v[3]}")
      end

      def from_time=(str)
        v = str.match(/^(\d{2})(\d{2})$/)
        super("#{v[1]}:#{v[2]}")
      end

    end
  end
end
