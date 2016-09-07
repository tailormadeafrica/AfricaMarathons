class AddFlagImageIdToRefineryLocations < ActiveRecord::Migration
  def change
    add_column :refinery_locations, :flag_image_id, :integer
  end
end
