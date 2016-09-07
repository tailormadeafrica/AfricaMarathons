class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.string :airline_and_flight_no
      t.string :departure_airport
      t.datetime :departure
      t.string :arrival_airport
      t.datetime :arrival
      t.integer :booking_id

      t.timestamps
    end
  end
end
