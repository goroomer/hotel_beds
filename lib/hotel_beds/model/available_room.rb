require "hotel_beds/model/room"
require "hotel_beds/model/price"
require "hotel_beds/model/cancellation_policy"
require "hotel_beds/model/customer"
require "hotel_beds/model/tax"

module HotelBeds
  module Model
    class AvailableRoom < Room
      # attributes
      attribute :id, Integer
      attribute :room_count, Integer
      attribute :description, String
      attribute :board, String
      attribute :board_code, String
      attribute :room_type_code, String
      attribute :room_type_characteristic, String
      attribute :price_amount, BigDecimal
      attribute :net_price, BigDecimal
      attribute :selling_price, BigDecimal
      attribute :is_selling_price_mandatory, String
      attribute :taxes, Array[HotelBeds::Model::Tax],
                default: Array.new
      attribute :number_available, Integer
      attribute :rates, Hash[Date => BigDecimal]
      attribute :cancellation_policies, Array[HotelBeds::Model::CancellationPolicy],
                default: Array.new
      attribute :customers, Array[HotelBeds::Model::Customer],
                default: Array.new
      attribute :basket_cancellation_policy, Array[HotelBeds::Model::CancellationPolicy],
                default: Array.new

      # validation
      validates :is_selling_price_mandatory, length: { is: 1 }

      def description=(str)
        super(str.split(" ").map{|word| word.downcase.capitalize}.join(' '))
      end

      def rates=(values)
        if values.kind_of?(Array)
          prices = values.map do |attrs|
            HotelBeds::Model::Price.new(attrs)
          end
          hash = prices.each_with_object(Hash.new) do |price, result|
            price.dates.each do |date|
              result[date] = price.amount
            end
          end
          super(hash)
        else
          super
        end
      end

    end
  end
end
