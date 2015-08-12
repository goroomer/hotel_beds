require "hotel_beds/model"

module HotelBeds
  module Model
    class CancellationPolicy
      include HotelBeds::Model

      # attributes
      attribute :amount, BigDecimal
      attribute :from_date, String
      attribute :from_time, String

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
