require "hotel_beds/model"

module HotelBeds
  module Model
    class CancellationPolicy
      include HotelBeds::Model

      # attributes
      attribute :amount, BigDecimal
      attribute :from_date, String
      attribute :from_time, String

      attribute :add_to_cart_from_date, String
      attribute :add_to_cart_from_time, String
      attribute :add_to_cart_end_date, String
      attribute :add_to_cart_amount, BigDecimal

      def from_date=(str)
        v = str.match(/^(\d{4})(\d{2})(\d{2})$/) if str.present?
        super("#{v[1]}-#{v[2]}-#{v[3]}") if v.present?
      end

      def from_time=(str)
        v = str.match(/^(\d{2})(\d{2})$/) if str.present?
        super("#{v[1]}:#{v[2]}") if v.present?
      end

      def add_to_cart_from_date=(str)
        v = str.match(/^(\d{4})(\d{2})(\d{2})$/) if str.present?
        super("#{v[1]}-#{v[2]}-#{v[3]}") if v.present?
      end

      def add_to_cart_from_time=(str)
        v = str.match(/^(\d{2})(\d{2})$/) if str.present?
        super("#{v[1]}:#{v[2]}") if v.present?
      end

      def add_to_cart_end_date=(str)
        v = str.match(/^(\d{4})(\d{2})(\d{2})$/) if str.present?
        super("#{v[1]}-#{v[2]}-#{v[3]}") if v.present?
      end

    end
  end
end
