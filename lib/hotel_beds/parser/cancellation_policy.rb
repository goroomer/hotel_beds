require "hotel_beds/parser"

module HotelBeds
  module Parser
    class CancellationPolicy
      include HotelBeds::Parser


      attribute :amount, attr: "amount"
      attribute :from_date, attr: "dateFrom"
      attribute :from_time, attr: "time"

      # attributes
      # attribute :from do |doc|
      #   el = doc.at_css("DateTimeFrom")
      #   v, year, month, day = *el.attr("dateFrom").match(/^(\d{4})(\d{2})(\d{2})$/)
      #   if el.attr("time")
      #     v, hour, minute = *el.attr("time").match(/^(\d{2})(\d{2})$/)
      #   else
      #     hour, minute = 0, 0
      #   end
      #   Time.new(year, month, day, hour, minute)
      # end
    end
  end
end
