class AddCountdownDateToRefineryLocations < ActiveRecord::Migration
  def change
    add_column :refinery_locations, :countdown_timer, :datetime
  end
end
