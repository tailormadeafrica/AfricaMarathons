class AddLocationIdToRefineryAccommodations < ActiveRecord::Migration
  def change
    add_column :refinery_accommodations, :location_id, :integer
  end
end
