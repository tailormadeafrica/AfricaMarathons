class AddSideBodyToRefineryLocations < ActiveRecord::Migration
  def change
    add_column :refinery_locations, :side_body, :text
  end
end
