require 'hotel_beds/parser'
require 'hotel_beds/parser/comment'
require 'hotel_beds/parser/classification'

module HotelBeds
  module Parser
    class Contract
      include HotelBeds::Parser

      # attributes
      attribute :name, selector: 'Name'
      attribute :incoming_office_code, selector: 'IncomingOffice', attr: 'code'
      attribute :comments,
                selector: 'CommentList Comment', multiple: true,
                parser:   HotelBeds::Parser::Comment
      attribute :classification, selector: 'Classification', parser: HotelBeds::Parser::Classification
    end
  end
end