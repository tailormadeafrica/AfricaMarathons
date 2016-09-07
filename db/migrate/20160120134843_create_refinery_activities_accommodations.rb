class CreateRefineryActivitiesAccommodations < ActiveRecord::Migration
  def self.up
    create_table :refinery_activities_accommodations, :id => false do |t|
      t.integer :activity_id
      t.integer :accommodation_id
    end

    add_index :refinery_activities_accommodations, :activity_id
    add_index :refinery_activities_accommodations, :accommodation_id

  end

  def self.down
    drop_table :refinery_activities_accommodations
  end
end
