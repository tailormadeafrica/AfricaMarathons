class AddMoreFieldsToRefineryLocations < ActiveRecord::Migration
  def change
    add_column :refinery_locations, :gallery_id, :integer
    add_column :refinery_locations, :latitude, :string
    add_column :refinery_locations, :longitude, :string
  end
end
