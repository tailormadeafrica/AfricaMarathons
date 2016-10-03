class AddSlugToRefineryLocations < ActiveRecord::Migration
  def change
    add_column :refinery_locations, :slug, :string
  end
end
