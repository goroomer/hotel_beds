require 'hotel_beds/parser'
require 'hotel_beds/parser/cancellation_policy'
require 'hotel_beds/parser/price'
require 'hotel_beds/parser/customer'
require 'hotel_beds/parser/tax'

module HotelBeds
  module Parser
    class AvailableRoom
      include HotelBeds::Parser

      # attributes
      attribute :id, selector: 'HotelRoom', attr: 'SHRUI'
      attribute :room_count, selector: 'HotelOccupancy RoomCount'
      attribute :adult_count, selector: 'HotelOccupancy AdultCount'
      attribute :child_count, selector: 'HotelOccupancy ChildCount'
      attribute :number_available, selector: 'HotelRoom', attr: 'availCount'
      attribute :description, selector: 'HotelRoom RoomType'
      attribute :board, selector: 'HotelRoom Board'
      attribute :board_code, selector: 'HotelRoom Board', attr: 'code'
      attribute :room_type_code, selector: 'HotelRoom RoomType', attr: 'code'
      attribute :room_type_characteristic,
                selector: 'HotelRoom RoomType', attr: 'characteristic'
      attribute :price_amount, selector: 'HotelRoom > Price > Amount'
      attribute :net_price, selector: 'HotelRoom > Price > NetPrice'
      attribute :selling_price, selector: 'HotelRoom > Price > SellingPrice'
      attribute :is_selling_price_mandatory, selector: 'HotelRoom > Price > SellingPrice', attr: 'mandatory'
      attribute :taxes,
                selector: 'HotelRoom > TaxList > Tax', multiple: true,
                parser:   HotelBeds::Parser::Tax
      attribute :cancellation_policies,
                selector: 'HotelRoom > CancellationPolicies > CancellationPolicy', multiple: true,
                parser:   HotelBeds::Parser::CancellationPolicy
      attribute :rates,
                selector: 'Price PriceList Price', multiple: true,
                parser:   HotelBeds::Parser::Price
      attribute :customers,
                selector: 'HotelOccupancy GuestList Customer', multiple: true,
                parser:   HotelBeds::Parser::Customer
    end
  end
end
