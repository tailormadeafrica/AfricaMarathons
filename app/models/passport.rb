class Passport < ActiveRecord::Base
  self.table_name = 'passports'

  attr_accessible :booking_id, :date_of_birth, :diet_req, :expiry_date, :first_name, :issue_date, :passport_no, :place_of_issue, :surname, :title, :weight

  belongs_to :booking, :class_name => 'Refinery::Bookings::Booking'
end
