module HotelBeds
  module Parser
    class Classification
      include HotelBeds::Parser

      attribute :code, attr: 'code'
      attribute :type
    end
  end
end