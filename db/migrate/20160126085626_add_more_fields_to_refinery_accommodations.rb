class AddMoreFieldsToRefineryAccommodations < ActiveRecord::Migration
  def change
    add_column :refinery_accommodations, :gallery_id, :integer
    add_column :refinery_accommodations, :latitude, :string
    add_column :refinery_accommodations, :longitude, :string
    add_column :refinery_accommodations, :address, :text
  end
end
