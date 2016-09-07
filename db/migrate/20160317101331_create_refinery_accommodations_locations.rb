class CreateRefineryAccommodationsLocations < ActiveRecord::Migration
  def self.up
    create_table :refinery_accommodations_locations, :id => false do |t|
      t.integer :location_id
      t.integer :accommodation_id
    end

    add_index :refinery_accommodations_locations, :location_id
    add_index :refinery_accommodations_locations, :accommodation_id

  end

  def self.down
    drop_table :refinery_accommodations_locations
  end
end
