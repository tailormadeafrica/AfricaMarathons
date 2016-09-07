class AddParentFieldsToRefineryLocations < ActiveRecord::Migration
  def change
    add_column :refinery_locations, :parent_id, :integer
    add_column :refinery_locations, :lft, :integer
    add_column :refinery_locations, :rgt, :integer
    add_column :refinery_locations, :depth, :integer
  end
end
