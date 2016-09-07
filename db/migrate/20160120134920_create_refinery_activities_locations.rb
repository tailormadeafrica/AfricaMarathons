class CreateRefineryActivitiesLocations < ActiveRecord::Migration
  def self.up
    create_table :refinery_activities_locations, :id => false do |t|
      t.integer :activity_id
      t.integer :location_id
    end

    add_index :refinery_activities_locations, :activity_id
    add_index :refinery_activities_locations, :location_id

  end

  def self.down
    drop_table :refinery_activities_locations
  end
end
