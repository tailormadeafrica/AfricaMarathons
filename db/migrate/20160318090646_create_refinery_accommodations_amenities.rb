class CreateRefineryAccommodationsAmenities < ActiveRecord::Migration
  def self.up
    create_table :refinery_accommodations_amenities, :id => false do |t|
      t.integer :amenity_id
      t.integer :accommodation_id
    end

    add_index :refinery_accommodations_amenities, :amenity_id
    add_index :refinery_accommodations_amenities, :accommodation_id

  end

  def self.down
    drop_table :refinery_accommodations_amenities
  end
end
