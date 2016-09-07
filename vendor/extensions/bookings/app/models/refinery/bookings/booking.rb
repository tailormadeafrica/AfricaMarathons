module Refinery
  module Bookings
    class Booking < Refinery::Core::BaseModel
      self.table_name = 'refinery_bookings'

      acts_as_indexed :fields => [:full_name, :email, :telephone, :cellphone, :address, :insurance_company, :policy_number, :emergency_number, :birthday_who_and_when, :anniversary_who_and_where, :emergency_contacts, :i_accept_name]

      alias_attribute :message, :address

      attr_accessible :full_name, :email, :telephone, :cellphone, :address, :insurance_company, :policy_number, :emergency_number, :birthday_who_and_when, :anniversary_who_and_where, :emergency_contacts, :i_accept_name, :dont_get_newsletters, :certify_personal_insurance, :honeymoon, :birthday, :anniversary, :i_accept, :passports_attributes, :flights_attributes


      DIETS = ['None', 'Diabetic', 'Halaal', 'Hindu', 'Kosher', 'No Beef', 'No Lamb', 'No Pork', 'Vegan', 'Vegetarian', 'No Beef / No Pork']

      has_many :passports, :dependent => :destroy
      accepts_nested_attributes_for :passports, :reject_if => lambda { |item| item['first_name'].blank?}, :allow_destroy => true

      has_many :flights, :dependent => :destroy
      accepts_nested_attributes_for :flights, :reject_if => lambda { |item| item['airline_and_flight_no'].blank?}, :allow_destroy => true

      alias_attribute :name, :full_name

      # Add some validation here if you want to validate the user's input
      # We have validated the first string field for you.
      validates :full_name, :presence => true
      validates :i_accept_name, :presence => true
      validates :email, :presence => true, :format=> { :with =>  /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }


    end
  end
end
