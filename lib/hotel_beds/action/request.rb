require "hotel_beds/model"

module HotelBeds
  module Action
    class Request
      include HotelBeds::Model

      # attributes
      attribute :language, String, default: "ENG"
      attribute :cancellation_policy, String, default: "Y"

      # validation
      validates :language, length: { is: 3 }
      validates :cancellation_policy, length: { is: 1 }
    end
  end
end
