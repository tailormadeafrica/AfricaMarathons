class Flight < ActiveRecord::Base
  self.table_name = 'flights'

  attr_accessible :airline_and_flight_no, :arrival, :arrival_airport, :booking_id, :departure, :departure_airport

  belongs_to :booking, :class_name => 'Refinery::Bookings::Booking'
end
